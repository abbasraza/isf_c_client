################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/cJSON.c \
../src/c_algo.c \
../src/c_function.c \
../src/c_iterator.c \
../src/c_list.c \
../src/c_map.c \
../src/c_memory.c \
../src/c_pair.c \
../src/c_queue.c \
../src/c_set.c \
../src/c_stack.c \
../src/c_tree.c \
../src/c_vector.c \
../src/comparer.c \
../src/cstring.c \
../src/lifo_stack.c \
../src/linked_list.c \
../src/memento.c \
../src/sqlFormat.c \
../src/tree_map.c 

OBJS += \
./temp/cJSON.o \
./temp/c_algo.o \
./temp/c_function.o \
./temp/c_iterator.o \
./temp/c_list.o \
./temp/c_map.o \
./temp/c_memory.o \
./temp/c_pair.o \
./temp/c_queue.o \
./temp/c_set.o \
./temp/c_stack.o \
./temp/c_tree.o \
./temp/c_vector.o \
./temp/comparer.o \
./temp/cstring.o \
./temp/lifo_stack.o \
./temp/linked_list.o \
./temp/memento.o \
./temp/sqlFormat.o \
./temp/tree_map.o 

C_DEPS += \
./temp/cJSON.d \
./temp/c_algo.d \
./temp/c_function.d \
./temp/c_iterator.d \
./temp/c_list.d \
./temp/c_map.d \
./temp/c_memory.d \
./temp/c_pair.d \
./temp/c_queue.d \
./temp/c_set.d \
./temp/c_stack.d \
./temp/c_tree.d \
./temp/c_vector.d \
./temp/comparer.d \
./temp/cstring.d \
./temp/lifo_stack.d \
./temp/linked_list.d \
./temp/memento.d \
./temp/sqlFormat.d \
./temp/tree_map.d 


# Each subdirectory must supply rules for building sources it contributes
temp/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"../include/collection" -I"../include/curl" -I"../include/json" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


