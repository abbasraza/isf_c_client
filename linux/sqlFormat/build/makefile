RM := rm -rf
TEMP := temp

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: mkTempDir sqlFormat

mkTempDir: 
	mkdir $(TEMP)

# Tool invocations
sqlFormat: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C Linker'
	gcc -L"../lib" -lm `curl-config --static-libs` -o "sqlFormat" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	@echo 'Cleaning target: $@'
	-$(RM) $(TEMP) sqlFormat
	@echo 'Finished Cleaning target: $@'

.PHONY: all clean dependents
.SECONDARY:
