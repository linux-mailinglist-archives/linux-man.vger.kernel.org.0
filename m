Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BD8726780E
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 08:00:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725859AbgILGAF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Sep 2020 02:00:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725808AbgILGAB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Sep 2020 02:00:01 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABEC7C061573
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 23:00:00 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id z1so13394616wrt.3
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 23:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Z6bZjoXC+JIlzMzp4332yZA6WwONJ7ZsySu7nRwHk78=;
        b=ICk0xuAHgK2n7ljtVLTqDOygjvQL78hQWGbRfnegekszFVb71CKQpNfEATv2oKJHeE
         JSgj04Ouomwnj89ycuWkgN2cjjeyedsG4SZ5koN9jCt+UtlEyt5BzrNSKePTXkE5APdb
         a1zsp+6zLZKcBFI9Wd5MLHeVJoU8xqrdyb/eYSMY5yPWfxsSFjgjTfxRw7oFWkFk4qRu
         l1uZaJSGDS8ItI5jGHd64HPcnP04wV3JwNKerMXJXI8kDY4jgLeseXRotUQRFvRB4lJy
         fSefshrfJoT+25wmgHTIqHzIfjBrASRy5JfsPSqoYB9XjzM++eL9LgE3Giwhgt/hsbft
         /wdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Z6bZjoXC+JIlzMzp4332yZA6WwONJ7ZsySu7nRwHk78=;
        b=dwZpERcWClWKzUaCX7QfHgiM+czuWCd08Em8L2IKL/VmAHxLsnwlMRUWEycyyxc9RX
         C152NcnzGYExmkQsES4cajOvZ2GwPQAXzUSr8XwgdZE0ZszrCxkfqCHxEEezJSYTilfd
         7UiZe2gcxnPYhydBN2qcbthSMw62khc4fEvzRrLqSIQaSb3brMG6jJE6dFkmBG9cGO8/
         7HSZ+QzFGf0nlIZS2XgCtbtOCDOiRPpCkmagOpzRoe1x4UDtp6ObuLNN43Du2Mt/yK+R
         qv0/s2tr5D0dVjgdpR4eGay95GNexnXxFply2O7SgE5ZlsFyjjs2Ct+dHGso9DnFNesE
         fQmw==
X-Gm-Message-State: AOAM533DCK9FYArPb6uQfy39F55Z9wKe3+ILFjaa74AEPNCtUyil91IB
        oAQvB1SP9NMpbAWQCViePUN6wYgurJE=
X-Google-Smtp-Source: ABdhPJwTuD575nzzCBXtAvBoQzyPaE8r+ia+B8C0d7yHnqF2s/H4wuGT8iy7HFx+4SKTX4dLLd3QjQ==
X-Received: by 2002:adf:e4cf:: with SMTP id v15mr5279456wrm.174.1599890399012;
        Fri, 11 Sep 2020 22:59:59 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 97sm8653296wrm.15.2020.09.11.22.59.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 22:59:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] eventfd.2, mprotect.2, pidfd_open.2, spu_run.2,
 timer_create.2, bswap.3, dl_iterate_phdr.3, endian.3, pthread_attr_init.3,
 pthread_getattr_np.3, vcs.4, rtld-audit.7: In printf(): s/0x%/%#/ except when
 followed by X instead of x
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200911205350.11921-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f7e86af2-72ee-1a9e-be13-b15ce8d64787@gmail.com>
Date:   Sat, 12 Sep 2020 07:59:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911205350.11921-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/11/20 10:53 PM, Alejandro Colomar wrote:
> Use printf()'s '#' flag character to prepend the string "0x".
> 
> However, when the number is printed in uppercase, and the prefix
> is in lowercase, the string "0x" needs to be manually written.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/eventfd.2            | 2 +-
>  man2/mprotect.2           | 4 ++--
>  man2/pidfd_open.2         | 2 +-
>  man2/spu_run.2            | 2 +-
>  man2/timer_create.2       | 4 ++--
>  man3/bswap.3              | 2 +-
>  man3/dl_iterate_phdr.3    | 4 ++--
>  man3/endian.3             | 6 +++---
>  man3/pthread_attr_init.3  | 2 +-
>  man3/pthread_getattr_np.3 | 2 +-
>  man4/vcs.4                | 2 +-
>  man7/rtld-audit.7         | 4 ++--
>  12 files changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/man2/eventfd.2 b/man2/eventfd.2
> index 71e9d85b4..375f4823b 100644
> --- a/man2/eventfd.2
> +++ b/man2/eventfd.2
> @@ -431,7 +431,7 @@ main(int argc, char *argv[])
>          s = read(efd, &u, sizeof(uint64_t));
>          if (s != sizeof(uint64_t))
>              handle_error("read");
> -        printf("Parent read %"PRIu64" (0x%"PRIx64") from efd\en", u, u);
> +        printf("Parent read %"PRIu64" (%#"PRIx64") from efd\en", u, u);
>          exit(EXIT_SUCCESS);
>  
>      case \-1:
> diff --git a/man2/mprotect.2 b/man2/mprotect.2
> index 556ee9446..47d250303 100644
> --- a/man2/mprotect.2
> +++ b/man2/mprotect.2
> @@ -326,7 +326,7 @@ handler(int sig, siginfo_t *si, void *unused)
>         Nevertheless, we use printf() here as a simple way of
>         showing that the handler was called. */
>  
> -    printf("Got SIGSEGV at address: 0x%lx\en",
> +    printf("Got SIGSEGV at address: %#lx\en",
>              (long) si\->si_addr);
>      exit(EXIT_FAILURE);
>  }
> @@ -354,7 +354,7 @@ main(int argc, char *argv[])
>      if (buffer == NULL)
>          handle_error("memalign");
>  
> -    printf("Start of region:        0x%lx\en", (long) buffer);
> +    printf("Start of region:        %#lx\en", (long) buffer);
>  
>      if (mprotect(buffer + pagesize * 2, pagesize,
>                  PROT_READ) == \-1)
> diff --git a/man2/pidfd_open.2 b/man2/pidfd_open.2
> index ecdb98b1b..0256d6d8c 100644
> --- a/man2/pidfd_open.2
> +++ b/man2/pidfd_open.2
> @@ -253,7 +253,7 @@ main(int argc, char *argv[])
>          exit(EXIT_FAILURE);
>      }
>  
> -    printf("Events (0x%x): POLLIN is %sset\en", pollfd.revents,
> +    printf("Events (%#x): POLLIN is %sset\en", pollfd.revents,
>              (pollfd.revents & POLLIN) ? "" : "not ");
>  
>      close(pidfd);
> diff --git a/man2/spu_run.2 b/man2/spu_run.2
> index 8346d21b7..b6bc2c131 100644
> --- a/man2/spu_run.2
> +++ b/man2/spu_run.2
> @@ -254,7 +254,7 @@ int main(void)
>       *   0x00000002 (spu was stopped due to stop\-and\-signal)
>       * | 0x12340000 (the stop\-and\-signal code)
>       */
> -    printf("SPU Status: 0x%08x\en", spu_status);
> +    printf("SPU Status: %#08x\en", spu_status);
>  
>      exit(EXIT_SUCCESS);
>  }
> diff --git a/man2/timer_create.2 b/man2/timer_create.2
> index 9c9907739..05482f6d9 100644
> --- a/man2/timer_create.2
> +++ b/man2/timer_create.2
> @@ -390,7 +390,7 @@ print_siginfo(siginfo_t *si)
>      tidp = si\->si_value.sival_ptr;
>  
>      printf("    sival_ptr = %p; ", si\->si_value.sival_ptr);
> -    printf("    *sival_ptr = 0x%lx\en", (unsigned long) *tidp);
> +    printf("    *sival_ptr = %#lx\en", (unsigned long) *tidp);
>  
>      or = timer_getoverrun(*tidp);
>      if (or == \-1)
> @@ -454,7 +454,7 @@ main(int argc, char *argv[])
>      if (timer_create(CLOCKID, &sev, &timerid) == \-1)
>          errExit("timer_create");
>  
> -    printf("timer ID is 0x%lx\en", (unsigned long) timerid);
> +    printf("timer ID is %#lx\en", (unsigned long) timerid);
>  
>      /* Start the timer */
>  
> diff --git a/man3/bswap.3 b/man3/bswap.3
> index ce847580a..722cac806 100644
> --- a/man3/bswap.3
> +++ b/man3/bswap.3
> @@ -73,7 +73,7 @@ main(int argc, char *argv[])
>      }
>  
>      x = strtoull(argv[1], NULL, 0);
> -    printf("0x%" PRIx64 " ==> 0x%" PRIx64 "\en", x, bswap_64(x));
> +    printf("%#" PRIx64 " ==> %#" PRIx64 "\en", x, bswap_64(x));
>  
>      exit(EXIT_SUCCESS);
>  }
> diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
> index 62a3596a3..70206a0ba 100644
> --- a/man3/dl_iterate_phdr.3
> +++ b/man3/dl_iterate_phdr.3
> @@ -325,14 +325,14 @@ callback(struct dl_phdr_info *info, size_t size, void *data)
>                  (p_type == PT_GNU_STACK) ? "PT_GNU_STACK" :
>                  (p_type == PT_GNU_RELRO) ? "PT_GNU_RELRO" : NULL;
>  
> -        printf("    %2d: [%14p; memsz:%7lx] flags: 0x%x; ", j,
> +        printf("    %2d: [%14p; memsz:%7lx] flags: %#x; ", j,
>                  (void *) (info\->dlpi_addr + info\->dlpi_phdr[j].p_vaddr),
>                  info\->dlpi_phdr[j].p_memsz,
>                  info\->dlpi_phdr[j].p_flags);
>          if (type != NULL)
>              printf("%s\en", type);
>          else
> -            printf("[other (0x%x)]\en", p_type);
> +            printf("[other (%#x)]\en", p_type);
>      }
>  
>      return 0;
> diff --git a/man3/endian.3 b/man3/endian.3
> index bdf1efd7e..4a2b29882 100644
> --- a/man3/endian.3
> +++ b/man3/endian.3
> @@ -164,9 +164,9 @@ main(int argc, char *argv[])
>      x.arr[2] = 0x33;
>      x.arr[3] = 0x44;	/* Highest-address byte */
>  
> -    printf("x.u32 = 0x%x\en", x.u32);
> -    printf("htole32(x.u32) = 0x%x\en", htole32(x.u32));
> -    printf("htobe32(x.u32) = 0x%x\en", htobe32(x.u32));
> +    printf("x.u32 = %#x\en", x.u32);
> +    printf("htole32(x.u32) = %#x\en", htole32(x.u32));
> +    printf("htobe32(x.u32) = %#x\en", htobe32(x.u32));
>  
>      exit(EXIT_SUCCESS);
>  }
> diff --git a/man3/pthread_attr_init.3 b/man3/pthread_attr_init.3
> index ed7faaff0..815b45de8 100644
> --- a/man3/pthread_attr_init.3
> +++ b/man3/pthread_attr_init.3
> @@ -228,7 +228,7 @@ display_pthread_attr(pthread_attr_t *attr, char *prefix)
>      if (s != 0)
>          handle_error_en(s, "pthread_attr_getstack");
>      printf("%sStack address       = %p\en", prefix, stkaddr);
> -    printf("%sStack size          = 0x%zx bytes\en", prefix, v);
> +    printf("%sStack size          = %#zx bytes\en", prefix, v);
>  }
>  
>  static void *
> diff --git a/man3/pthread_getattr_np.3 b/man3/pthread_getattr_np.3
> index be957607e..01538526b 100644
> --- a/man3/pthread_getattr_np.3
> +++ b/man3/pthread_getattr_np.3
> @@ -222,7 +222,7 @@ display_stack_related_attributes(pthread_attr_t *attr, char *prefix)
>      if (stack_size > 0)
>          printf(" (EOS = %p)", (char *) stack_addr + stack_size);
>      printf("\en");
> -    printf("%sStack size          = 0x%zx (%zu) bytes\en",
> +    printf("%sStack size          = %#zx (%zu) bytes\en",
>              prefix, stack_size, stack_size);
>  }
>  
> diff --git a/man4/vcs.4 b/man4/vcs.4
> index 6a67eb413..bfa92aaea 100644
> --- a/man4/vcs.4
> +++ b/man4/vcs.4
> @@ -177,7 +177,7 @@ main(void)
>      if (s & mask)
>          ch |= 0x100;
>      attrib = ((s & \(timask) >> 8);
> -    printf("ch=0x%03x attrib=0x%02x\en", ch, attrib);
> +    printf("ch=%#03x attrib=%#02x\en", ch, attrib);
>      s \(ha= 0x1000;
>      (void) lseek(fd, \-2, SEEK_CUR);
>      (void) write(fd, &s, 2);
> diff --git a/man7/rtld-audit.7 b/man7/rtld-audit.7
> index c6a4c19bf..f90731261 100644
> --- a/man7/rtld-audit.7
> +++ b/man7/rtld-audit.7
> @@ -572,7 +572,7 @@ la_symbind32(Elf32_Sym *sym, unsigned int ndx, uintptr_t *refcook,
>  {
>      printf("la_symbind32(): symname = %s; sym\->st_value = %p\en",
>              symname, sym\->st_value);
> -    printf("        ndx = %d; flags = 0x%x", ndx, *flags);
> +    printf("        ndx = %d; flags = %#x", ndx, *flags);
>      printf("; refcook = %p; defcook = %p\en", refcook, defcook);
>  
>      return sym\->st_value;
> @@ -584,7 +584,7 @@ la_symbind64(Elf64_Sym *sym, unsigned int ndx, uintptr_t *refcook,
>  {
>      printf("la_symbind64(): symname = %s; sym\->st_value = %p\en",
>              symname, sym\->st_value);
> -    printf("        ndx = %d; flags = 0x%x", ndx, *flags);
> +    printf("        ndx = %d; flags = %#x", ndx, *flags);
>      printf("; refcook = %p; defcook = %p\en", refcook, defcook);
>  
>      return sym\->st_value;
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
