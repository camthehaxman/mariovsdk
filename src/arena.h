
void arena_init(void *start, void *end);
void *arena_allocate(u32 size);
void arena_save_head(s32 index);
void arena_restore_head(s32 index);
