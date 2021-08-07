Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5659C3E371C
	for <lists+linux-man@lfdr.de>; Sat,  7 Aug 2021 23:35:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbhHGVfm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 17:35:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbhHGVfm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 17:35:42 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B01C9C0613CF
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 14:35:24 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id u13-20020a17090abb0db0290177e1d9b3f7so28148716pjr.1
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 14:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1oT5qIjDwaXCqY7soEXsJi3kUW1V6Ol8W/jV22xxOq8=;
        b=qMBXKHO2vpMg/cduh5/yL3gvocDvES9nd2xxfOM/V7LrhR5jQrZxESeZ7e05i0cHwY
         jPVD0ugsgf3abg/1D/dHe4pwn5jS5IyFYzN3m4OnTN1iRJVqELDNzj/28hfXvXqSnstz
         MLtlC2t60fhzB19ehmz/GLAuiDAyLhW/FNU7zVRX7QN7BGZV1gu6X6/nZy4bv0hCJH8r
         ICekoyZtEpKc5R0Gwl6n21FGZLpe9hjl4jxjtu0si9zC8EravpBR2Lswr9PrKeUpGt//
         3y9y3HtLbvpI2HS1BhGU2g9T2Qsjd+pIeMhbwLfXhIJFFc7Lq+WVQRddFBCJ7HhGl2Pa
         16AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1oT5qIjDwaXCqY7soEXsJi3kUW1V6Ol8W/jV22xxOq8=;
        b=H8uVhaTn+RVB5cxbIo3nSbZA9gUud2DefblatSRE4jklnZAStWFLTB9XRpSoyp9iVc
         ZRtwFs7yCX253FEy2TzksJXGkqLrlDAGnuLRjZA/rfVwWB4iyakAYUYcoCrpljJXHXg5
         V4oUFnEedNDk8Cp3YMOvzQzHsSWFsAvCcxCfFkcPoPldeKQeFmqRKaCjxrxO23xSNDPk
         z71yiR+Q3OtbFF1PIfvZPAp6T4zcxoG8RKDgErLcAEkOfvLeVpaDpv9bYWpAVM6wGyk0
         R15GuUkmD4pHDPD06/BKz6BimEao7wQQxwgh1r8+7kKLi5pVnd68CR+wCkzTNJw54I7K
         pMsw==
X-Gm-Message-State: AOAM5312aYQnyDUP2Si1cgIffzW6BaJqwKZ85qFkLG8NWG2Tzzf52YKV
        CfNo7CWPZMy1hZ8XGxzWJlzBP8ohYD4=
X-Google-Smtp-Source: ABdhPJwddXrUtTC7MebpfiFhqrdC54rgzYXZRbCInyjuV9rfPNhXCsIWYaJKRMXgSKIprdtU6kaMLg==
X-Received: by 2002:a62:1d06:0:b029:3ab:9703:b6b8 with SMTP id d6-20020a621d060000b02903ab9703b6b8mr11497553pfd.0.1628372123946;
        Sat, 07 Aug 2021 14:35:23 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id w15sm12931310pjc.45.2021.08.07.14.35.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 14:35:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Thomas Voss <thomasavoss@protonmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 08/32] Various pages: Consistently use '*argv[]'
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-9-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8c1540aa-7b93-d804-0eba-d8de58f090a9@gmail.com>
Date:   Sat, 7 Aug 2021 23:35:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-9-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex, Thomas,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> From: Thomas Voss <thomasavoss@protonmail.com>
> 
> Scripted change:
> 
> $ find man? -type f \
>   | sed -i 's/int argc, char \*\*argv/int argc, char \*argv\[\]/';
> 
> Signed-off-by: Thomas Voss <thomasavoss@protonmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Applied.

Cheers,

Michael

> ---
>  man2/bpf.2                | 2 +-
>  man2/copy_file_range.2    | 2 +-
>  man2/membarrier.2         | 4 ++--
>  man2/perf_event_open.2    | 2 +-
>  man2/seccomp.2            | 2 +-
>  man3/bsearch.3            | 2 +-
>  man3/getopt.3             | 2 +-
>  man3/getsubopt.3          | 2 +-
>  man3/pthread_setname_np.3 | 2 +-
>  man3/wordexp.3            | 2 +-
>  man7/fanotify.7           | 2 +-
>  11 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/man2/bpf.2 b/man2/bpf.2
> index 6e1ffa198..246053201 100644
> --- a/man2/bpf.2
> +++ b/man2/bpf.2
> @@ -1212,7 +1212,7 @@ riscv (since Linux 5.1).
>   * 4. print number of received TCP/UDP packets every second
>   */
>  int
> -main(int argc, char **argv)
> +main(int argc, char *argv[])
>  {
>      int sock, map_fd, prog_fd, key;
>      long long value = 0, tcp_cnt, udp_cnt;
> diff --git a/man2/copy_file_range.2 b/man2/copy_file_range.2
> index 467a16300..03bafcffc 100644
> --- a/man2/copy_file_range.2
> +++ b/man2/copy_file_range.2
> @@ -236,7 +236,7 @@ or server-side-copy (in the case of NFS).
>  #include <unistd.h>
>  
>  int
> -main(int argc, char **argv)
> +main(int argc, char *argv[])
>  {
>      int fd_in, fd_out;
>      struct stat stat;
> diff --git a/man2/membarrier.2 b/man2/membarrier.2
> index fec82f228..2771ebdcb 100644
> --- a/man2/membarrier.2
> +++ b/man2/membarrier.2
> @@ -358,7 +358,7 @@ slow_path(int *read_a)
>  }
>  
>  int
> -main(int argc, char **argv)
> +main(int argc, char *argv[])
>  {
>      int read_a, read_b;
>  
> @@ -444,7 +444,7 @@ slow_path(int *read_a)
>  }
>  
>  int
> -main(int argc, char **argv)
> +main(int argc, char *argv[])
>  {
>      int read_a, read_b;
>  
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index d2523dd3d..daf5edddf 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -3762,7 +3762,7 @@ perf_event_open(struct perf_event_attr *hw_event, pid_t pid,
>  }
>  
>  int
> -main(int argc, char **argv)
> +main(int argc, char *argv[])
>  {
>      struct perf_event_attr pe;
>      long long count;
> diff --git a/man2/seccomp.2 b/man2/seccomp.2
> index a3421871f..8c80fb7bb 100644
> --- a/man2/seccomp.2
> +++ b/man2/seccomp.2
> @@ -1199,7 +1199,7 @@ install_filter(int syscall_nr, int t_arch, int f_errno)
>  }
>  
>  int
> -main(int argc, char **argv)
> +main(int argc, char *argv[])
>  {
>      if (argc < 5) {
>          fprintf(stderr, "Usage: "
> diff --git a/man3/bsearch.3 b/man3/bsearch.3
> index 25ab3e8de..43e8b9c57 100644
> --- a/man3/bsearch.3
> +++ b/man3/bsearch.3
> @@ -124,7 +124,7 @@ compmi(const void *m1, const void *m2)
>  }
>  
>  int
> -main(int argc, char **argv)
> +main(int argc, char *argv[])
>  {
>      qsort(months, nr_of_months, sizeof(months[0]), compmi);
>      for (int i = 1; i < argc; i++) {
> diff --git a/man3/getopt.3 b/man3/getopt.3
> index 0d6ad1c54..ce4c28088 100644
> --- a/man3/getopt.3
> +++ b/man3/getopt.3
> @@ -491,7 +491,7 @@ with most of its features.
>  #include <getopt.h>
>  
>  int
> -main(int argc, char **argv)
> +main(int argc, char *argv[])
>  {
>      int c;
>      int digit_optind = 0;
> diff --git a/man3/getsubopt.3 b/man3/getsubopt.3
> index 99d112e63..2649984bb 100644
> --- a/man3/getsubopt.3
> +++ b/man3/getsubopt.3
> @@ -160,7 +160,7 @@ The following program expects suboptions following a "\-o" option.
>  #include <stdio.h>
>  
>  int
> -main(int argc, char **argv)
> +main(int argc, char *argv[])
>  {
>      enum {
>          RO_OPT = 0,
> diff --git a/man3/pthread_setname_np.3 b/man3/pthread_setname_np.3
> index a1fb3fa21..77c18a3cf 100644
> --- a/man3/pthread_setname_np.3
> +++ b/man3/pthread_setname_np.3
> @@ -180,7 +180,7 @@ threadfunc(void *parm)
>  }
>  
>  int
> -main(int argc, char **argv)
> +main(int argc, char *argv[])
>  {
>      pthread_t thread;
>      int rc;
> diff --git a/man3/wordexp.3 b/man3/wordexp.3
> index c583d559e..0aef4cc68 100644
> --- a/man3/wordexp.3
> +++ b/man3/wordexp.3
> @@ -240,7 +240,7 @@ is approximately that of "ls [a-c]*.c".
>  #include <wordexp.h>
>  
>  int
> -main(int argc, char **argv)
> +main(int argc, char *argv[])
>  {
>      wordexp_t p;
>      char **w;
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index 6a7e70d75..9c218fd06 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -1069,7 +1069,7 @@ $ \fBmkdir \-p /home/user/testdir\fP          # In another terminal
>  #define BUF_SIZE 256
>  
>  int
> -main(int argc, char **argv)
> +main(int argc, char *argv[])
>  {
>      int fd, ret, event_fd, mount_fd;
>      ssize_t len, path_len;
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
