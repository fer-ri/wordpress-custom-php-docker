# WordPress Docker Setup with Custom PHP Configuration

This repository provides a Docker-based setup for running WordPress with a custom PHP environment. It uses `docker compose` to orchestrate services and includes a custom `Dockerfile` and `custom.ini` file to modify PHP settings.

Original post: https://ferrisutanto.com/wordpress-docker-custom-php-ini

## Features
- **Customizable PHP Environment**: Modify PHP settings such as `max_execution_time`, `max_input_vars`, etc.
- **WordPress & MariaDB Integration**: Pre-configured WordPress with MariaDB as the database.
- **Simple Setup**: Just clone, configure, and run.


## Files Overview
- `docker-compose.yml`: Defines the services (WordPress and MariaDB) and their configurations.
- `Dockerfile`: Extends the official WordPress image to include custom PHP settings.
- `custom.ini`: Contains PHP configuration overrides.

## Usage
1. Clone the repository:

```bash
git clone https://github.com/fer-ri/wordpress-custom-php-docker.git wordpress
cd wordpress
```

2. Start the services:

```bash
docker compose up -d
```

3. Access WordPress at http://your-ip

## Customizing PHP Settings
To adjust PHP settings, edit the `custom.ini` file:

```ini
max_execution_time = 180
max_input_vars = 5000
; ... your own settings
```

After making changes, rebuild and restart the containers:

```bash
docker compose up -d --build
```

## Contributing
Feel free to open issues or submit pull requests to enhance this setup.

## License
This project is licensed under the MIT License.