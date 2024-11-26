Return-Path: <linux-man+bounces-2066-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D35F69D916E
	for <lists+linux-man@lfdr.de>; Tue, 26 Nov 2024 06:43:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 69122166F2E
	for <lists+linux-man@lfdr.de>; Tue, 26 Nov 2024 05:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06286154C00;
	Tue, 26 Nov 2024 05:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2J2qL5e"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22CB7E76D;
	Tue, 26 Nov 2024 05:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732599776; cv=none; b=TVFo16CrmVzHfkOxdS0GFXKO0253C6GwM3rGp+F1O+QnfvoSATFs1uEDf05ShY7SJRSGQp6DEKqi4EsEB9Gd3FOR34+hCa0YqxiL/Ze9eDBl4cXjIVT2x/4TUCyxoaI1UzFtEIGBsFWWMThm/fFzxQ4XeG1F/axNsNusjqq7Spk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732599776; c=relaxed/simple;
	bh=ygMY9QEjwTbcPZtVq0FIQ3TyslnFJ3rWP89mXCayalw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WUycdgNc+0W1Bv+rXYbaE0x4bDN9uGuS1RTiAIQIbUz0rggCAfq5kTNoAPZKOmCXlpK16Tr563qBlM7Ti8QXztslDzgmKQwl8ZZLJ2H8LBg/uKnXRzJRKceFafHYN5VgaEvurlC5d3A2yj2y1yOp0JVpLVXpT59DJhD2ZUZGu8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2J2qL5e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A86EC4CECF;
	Tue, 26 Nov 2024 05:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732599776;
	bh=ygMY9QEjwTbcPZtVq0FIQ3TyslnFJ3rWP89mXCayalw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L2J2qL5er8Oh6Pk80io4IUrbz4063Eo4pbSSvZ8eVEjYF7ykSHzw3jjhnziwp5CkN
	 1zbUbX5blwIZ53c7bUwLEU2BWlXTi8LZoueOGCmmvble2sRxVP8s/e4sq5Wx/mQfTy
	 OY1bc9FXoe8iKeQ8/9FyCXanK6psnCIExz+70i6sDJoi0Rajm8cm9hLjfMa9j+lCGw
	 euzv9CYson9qy++Xx7TmUUAbFa3mcoFDwwVES2lU07LMuEILAS/7rooZ+OLQ1gTb8h
	 hkM2z4Tg2J+TTlU5MgQjIvHNRHS4UhaNT2FN5mIFiUKu7dIEo83m5oc3LIfxUIVAkH
	 bOq4L5sW9xIhQ==
Date: Mon, 25 Nov 2024 21:42:54 -0800
From: Namhyung Kim <namhyung@kernel.org>
To: =?utf-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	linux-perf-users@vger.kernel.org
Subject: Re: perf_event_open.2: mmap ring buffer requirement for receiving
 overflow notifications
Message-ID: <Z0Vf3lrTUsbE_4NP@google.com>
References: <CAHGiy68y37n-y_b0gR-dArxFRzYOAr93dCw_6bvkNReNWQ37Hw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHGiy68y37n-y_b0gR-dArxFRzYOAr93dCw_6bvkNReNWQ37Hw@mail.gmail.com>

Hello,

On Sat, Nov 23, 2024 at 09:49:40PM +0100, Mikołaj Kołek wrote:
> I have found that when monitoring a file descriptor returned by
> perf_event_open() with poll(), it is required to allocate an mmap ring
> buffer to properly receive overflow notifications. If this is not
> done, poll() keeps continuously returning POLLHUP, even when an
> overflow notification should not be raised. Notably, this behavior is
> different from listening for overflow notifications by setting the
> O_ASYNC flag on the file descriptor - in that case, creating the mmap
> ring buffer is not required to receive the SIGIO signal delivered
> after the file descriptor becomes available for reading. I attach code
> showcasing this behavior (the functionality is explained in the
> comments).

Thanks for the report and the test code.  I agree that the current man
page is a little confusing about the overflow notification.  I can see
the following sentences in the "overflow handling" section.

  There are two ways to generate overflow notifications.

  The  first is to set a wakeup_events or wakeup_watermark value that
  will trigger if a certain number of samples or bytes have been
  written to the mmap ring buffer.  In this case, POLL_IN is indicated.

  The other way is by use of the PERF_EVENT_IOC_REFRESH ioctl.  This
  ioctl adds to a counter that decrements each  time  the  event
  overflows.  When nonzero, POLL_IN is indicated, but once the counter
  reaches 0 POLL_HUP is indicated and the underlying event is disabled.

I think the first and the default way uses the ring buffer to determine
overflow condition so it should be allocated before calling poll(2) or
similar.  The second way doesn't seem to require ring buffers, but I
haven't tested it actually.

Maybe we can add something like this to the first section:

  If the ring buffer is not allocated, POLL_HUP is indicated.

> 
> This behavior by itself is not a problem, however, in the current
> state of the perf_event_open man page, it's not documented, and in
> fact, there are confusing statements that seem to contradict my
> findings. In the MMAP layout section of the page, you can find this
> sentence:
> Before Linux 2.6.39, there is a bug that means you must allocate
> an mmap ring buffer when sampling even if you do not plan to
> access it.

I don't remember the old kernels, but it sounds like the event was
failing if no ring buffer is available.  Maybe no samples would be
generated in that case.

Thanks,
Namhyung


> Unless I'm somehow misunderstanding it, this statement does not seem
> to be well worded, or alternatively this bug does not seem to be
> fixed. I would not call simply using poll() on the file descriptor
> intent to access the ring buffer (unless it's meant to be understood
> that way, in which case, in my opinion, it's quite confusing).
> Additionally, I cannot find any change in Linux 2.6.39 that would fit
> this description (however, that is likely just due to my lack of
> experience searching through the kernel changelogs and commits).
> 
> I would like to receive clarification on whether this current behavior
> of perf_event_open is intentional and desired (that is why I cc'd
> linux-perf-users). If it is, I could also create a patch to the man
> page that lays out the requirements more clearly. In that case, it
> would also be helpful to further clarify the wording of the sentence
> mentioning the Linux 2.6.39 change, however I don't know if I'm
> qualified to do that, because as I have previously stated, I am unable
> to find what changes that sentence actually refers to.

> #include <linux/perf_event.h>
> #include <sys/syscall.h>
> #include <sys/mman.h>
> #include <iostream>
> #include <unistd.h>
> #include <signal.h>
> #include <fcntl.h>
> #include <cstdint>
> #include <poll.h>
> 
> // Modify the value of this constant to change the variant of the program
> // that is run. The possible values are:
> // 1: SIGIO without mmap, 2: SIGIO with mmap, 
> // 3: poll without mmap, 4: poll with mmap
> // As stated in the email, varaints 1, 2 and 4 properly trigger overflow
> // notifications approximately after each 1000000000 hardware instructions,
> // however when the program is run with variant = 3, poll will just 
> // continuously return POLLHUP, without waiting for the overflow
> // 
> // Also, before running any variant, make sure to set the 
> // kernel.perf_event_paranoid sysctl to -1 
> // (for example by running sudo sysctl kernel.perf_event_paranoid=-1)
> const int variant = 1;
> 
> static long perf_event_open(struct perf_event_attr *hw_event, pid_t
> 	pid, int cpu, int group_fd, unsigned long flags) {
>     return syscall(SYS_perf_event_open, hw_event, pid, cpu, group_fd, flags);
> }
> 
> volatile sig_atomic_t sigioOccurred = 0;
> void sigioHandler(int signum) {
>     sigioOccurred = 1;
> }
> 
> uint64_t get_instructions_used(int perf_fd) {
>     uint64_t result;
>     ssize_t size = read(perf_fd, &result, sizeof(uint64_t));
> 
>     if (size != sizeof(result)) {
>         std::cout << "read failed";
>         exit(0);
>     }
>     if (result < 0) {
>         std::cout << "read negative instructions count";
>         exit(0);
>     }
> 
>     return result;
> }
> 
> int main() {
>     struct sigaction sa;
>     sa.sa_handler = sigioHandler; sa.sa_flags = 0; sigemptyset(&sa.sa_mask);
>     sigaction(SIGIO, &sa, 0);
> 
>     int child = fork(), num = 2;
>     if(child == 0) {
>         while(true) {
>             num *= 2;
>         }
>     }
> 
>     struct perf_event_attr attrs {}; attrs.config = PERF_COUNT_HW_INSTRUCTIONS; 
>     attrs.type = PERF_TYPE_HARDWARE; attrs.sample_period = 1000000000; 
> 	attrs.wakeup_events = 1;
>     int perf_fd = perf_event_open(&attrs, child, -1, -1, 0);
> 
>     if(variant == 2 or variant == 4) {
>         void *base = mmap(NULL, getpagesize() * (8192 + 1), PROT_READ
> 			| PROT_WRITE, MAP_SHARED, perf_fd, 0);
> 		
>         if (base == MAP_FAILED) {
>             std::cout << "mmap err " << errno << "\n";
>             return -1;
>         }
>     }
> 
>     if(variant == 1 or variant == 2) {
>         fcntl(perf_fd, F_SETOWN, getpid());
>         fcntl(perf_fd, F_SETFL, (fcntl(perf_fd, F_GETFL, 0) | O_ASYNC));
>     }
> 
>     while(true) {
>         if(variant == 1 or variant == 2) {
>             if(sigioOccurred) {
>                 std::cout << "SIGIO delivered, instructions used: " <<
> 					get_instructions_used(perf_fd) << "\n";
> 				
>                 sigioOccurred = 0;
>             }
>         }
> 
>         if(variant == 3 or variant == 4) {
>             struct pollfd pfd = { .fd = perf_fd, .events = POLLIN };
>             int res = poll(&pfd, 1, 1000000);
> 
>             std::cout << "Poll returned ";
>             if(pfd.revents == POLLHUP)
>                 std::cout << "POLLHUP, instructions used: " << 
> 					get_instructions_used(perf_fd) << "\n";
>             else if(pfd.revents == POLLIN)
>                 std::cout << "POLLIN, instructions used: " <<
> 					get_instructions_used(perf_fd) << "\n";
>             else
>                 std::cout << pfd.revents << "\n";
>         }
>     }
> 
>     return 0;
> }

