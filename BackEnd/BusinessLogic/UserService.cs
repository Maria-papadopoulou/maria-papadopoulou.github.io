using BackEnd.Data;
using BackEnd.Models;
using Microsoft.EntityFrameworkCore;
using System.Security.Cryptography;
using System.Threading.Tasks;
using System.Text;
using BCrypt.Net;

namespace BackEnd.BusinessLogic
{
    public class UserService : IUserService
    {
        private readonly ApplicationDbContext _context;

        public UserService(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<User>> GetUsers()
        {
            return await _context.Users.ToListAsync();
        }

        public async Task<User?> GetUserById(int id)
        {
            return await _context.Users.FindAsync(id);
        }

        public async Task<User?> Authenticate(string email, string password)
        {
            var user = await _context.Users.FirstOrDefaultAsync(u => u.email == email);

            if (user == null || !VerifyPassword(password, user.password))
            {
                return null;
            }

            return user;
        }

        public async Task<User> SignUp(User user, string password)
        {
            var existingUser = await _context.Users.AnyAsync(u => u.email == user.email);
            if (existingUser)
            {
                throw new InvalidOperationException("Email is already in use.");
            }

            user.password = HashPassword(password);
            _context.Users.Add(user);
            await _context.SaveChangesAsync();
            return user;
        }

        public async Task UpdateUser(User user)
        {
            _context.Users.Update(user);
            await _context.SaveChangesAsync();
        }

        public async Task<User?> GetUserByEmail(string email)
        {
            return await _context.Users.FirstOrDefaultAsync(u => u.email == email);
        }

        private string HashPassword(string password)
        {
            return BCrypt.Net.BCrypt.HashPassword(password);
        }

        private bool VerifyPassword(string password, string? storedHash)
        {
            if (string.IsNullOrEmpty(storedHash)) return false;
            return BCrypt.Net.BCrypt.Verify(password, storedHash);
        }

    }
}