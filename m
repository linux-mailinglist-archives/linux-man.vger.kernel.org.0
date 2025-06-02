Return-Path: <linux-man+bounces-3085-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C01DCACBC86
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 22:54:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7637188FD29
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 20:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AE1022156F;
	Mon,  2 Jun 2025 20:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b="us7v3hHk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4734C226D08
	for <linux-man@vger.kernel.org>; Mon,  2 Jun 2025 20:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748897648; cv=none; b=AlRIcB2SwBVltNxPKz9cO43gWbZV9tT/bXgdnUcS4cRY7/ZujPlZV6E3VobMOhlbwCKEg9qKtTtOMk+L8a2ppx2XVOtDYqb00/FKBRIG2JvzPH0WYEqc7heJWsyR/J7XYkkZ52BP7AWxp/fM96xc6yvN/7X5qIAV7Qe3+uZqGZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748897648; c=relaxed/simple;
	bh=Za/2e5FwKdc8woHGVLBOZry4yqQKp2DKG8Cs+Q+6QTs=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=VpjqB4paRXUoq9GNA1YL9YRVpGOBrl0PKdp5HEkBtqQwqKLOKHmTh+/JQ1c/ai2flaZgMJMFP7Me+EPghpy7Se+fw2elw2sX7KjvEyqMI/LzV73KVPe1fQg7pA+T+BnJJ/frDAqJ2/WKZGBeNkQIsnvEYA7hobZCJKHDcGVF9hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk; spf=pass smtp.mailfrom=kernel.dk; dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b=us7v3hHk; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kernel.dk
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-3da73df6b6bso14273515ab.3
        for <linux-man@vger.kernel.org>; Mon, 02 Jun 2025 13:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1748897643; x=1749502443; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MzAU6//fWh1FcLgHJ92x60yv5Ij67zQJnl788qk+gf4=;
        b=us7v3hHkomTb0xT32D7QvdRjBUAdqwY9BGzmZYJNUxItyI/MJZAe7A/cpD4PQQ0RtX
         jHnIrzpLkVSFHfq2kTw+cMn8uHTiusIWRCLDFESXSNETHWwrsjS5vlp/izJGgT3MDQmW
         Hzi3fgXj1WXFLQiJrvzaK9PcL7KKo2mNYMOh58YY1DCOcTakyeGEVc6Gwyzsi4+Fe14l
         MOcn/oeoNg6o0tk74OgOxN065hjfavLIr4aUWh+H1G4NBdG82LhFWWsxn0jlAMZqVnjY
         3Z8TyQ/LuWymFjsFaIWcZvQa5J/jxbz2qSrJheQtHPCRhqWlIz3dm8kuXoi0Nd5Fj8QR
         Qbwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748897643; x=1749502443;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MzAU6//fWh1FcLgHJ92x60yv5Ij67zQJnl788qk+gf4=;
        b=Q9K0oExc01B/CnY2fugurvFkHso7fp4wFNDkRMmpNlLFMDtn6m9Vr8W8ILzogFqFNY
         E+uasXsOAYcUtafD3vGhTG9TflFkews24eFd+/sFdyj6F7RMU6ZsDF/67fRUAqOWXd1y
         /J9ZI1hBEccV/bAhjfi6OD7yf7TAhrjRt97trKp7IZQsCRoNZ210BZLNp90D3QZBieaA
         fOMlqEtlrV7qTcK3miP0Qi1BDxCDXa+azNHrLCI9kRM9y9U+Vk+hPc0S4ysHTNkGh85U
         WnQsh8L3/D0fuBaFvvbURfx2I9NytCicmuvrL3XuDFhS4oKTghZ9yP7s3cQwFKl1FZij
         vqIg==
X-Forwarded-Encrypted: i=1; AJvYcCWbdDjdKKM7reT9PKqk4CDlY6t1zhrhgXbhCQUjxdfSP6Buhux6QBEwAJKUVAWMHNGuMbjfevMP8jc=@vger.kernel.org
X-Gm-Message-State: AOJu0YwWp06ypMDzrkFzkyGygSJ69XasOtYg97Kl5ZOsC7PViGRTDl8a
	WnwQYXEIAxfv27/Ota7rl13eZ+4izWk5khLyT4OF8+3u45Nug9VyLs6KRgxGWbXfw8MDlukwS2Z
	Q7llk
X-Gm-Gg: ASbGncuZpqB4e681cTm9Dv8WQugoqPoTLdInYr/b367Kpnwd4C3tSxrat350VoFP8A0
	gYdMJwB5s7VgflizKHfILsiL7PsqES/i0joEvkKwyVwxjfLvNkc+AolRU2XcCjMdeM9fbGKqGJ9
	sOBHMsZ/3CwUtqLe5hWyfL+B5BLMPXXoCA3sat+XFB0yeDkuzzIip/HDVyE5cIS1pnVlS05sHhR
	ZgJM/1qGCyQhWzFVQJQgu9zVwIFCWesRPU1BnoJiytUHkuIZKn7qmeyvp/E67tSvwU/dF6o0xxc
	WQd2mo2HTArCJcBWcC6iCvC7Aq2X59Sg0dzZ6gmVCe/FYfM2j8py9nxC5ts=
X-Google-Smtp-Source: AGHT+IGMRvDT0tc7tkLkUxu9VDJBMwKYGvruumlWPcAjTbcjdhj0+QT3CyFRubVkuCzm0LLQkQy5mg==
X-Received: by 2002:a05:6e02:2704:b0:3dd:8663:d19e with SMTP id e9e14a558f8ab-3dda3370d40mr80866215ab.10.1748897643266;
        Mon, 02 Jun 2025 13:54:03 -0700 (PDT)
Received: from [192.168.1.150] ([198.8.77.157])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4fdd7ed82fbsm1926972173.90.2025.06.02.13.54.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jun 2025 13:54:02 -0700 (PDT)
Message-ID: <a8a96487-99d9-442d-bf05-2df856458b39@kernel.dk>
Date: Mon, 2 Jun 2025 14:54:01 -0600
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: RWF_DONTCACHE documentation
From: Jens Axboe <axboe@kernel.dk>
To: Christoph Hellwig <hch@infradead.org>
Cc: linux-fsdevel@vger.kernel.org, linux-man@vger.kernel.org,
 "Darrick J . Wong" <djwong@kernel.org>
References: <aD28onWyzS-HgNcB@infradead.org>
 <cb062be5-04e4-4131-94cc-6a8d90a809ac@kernel.dk>
Content-Language: en-US
In-Reply-To: <cb062be5-04e4-4131-94cc-6a8d90a809ac@kernel.dk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/2/25 9:49 AM, Jens Axboe wrote:
> On 6/2/25 9:00 AM, Christoph Hellwig wrote:
>> Hi Jens,
>>
>> I just tried to reference RWF_DONTCACHE semantics in a standards
>> discussion, but it doesn't seem to be documented in the man pages
>> or in fact anywhere else I could easily find.  Could you please write
>> up the semantics for the preadv2/pwritev2 man page?
> 
> Sure, I can write up something for the man page.

Adding Darrick as well, as a) he helped review the patches, and b) his
phrasing is usually much better than mine.

Anyway, here's my first attempt:

diff --git a/man/man2/readv.2 b/man/man2/readv.2
index c3b0a7091619..2e23e2f15cf4 100644
--- a/man/man2/readv.2
+++ b/man/man2/readv.2
@@ -301,6 +301,28 @@ or their equivalent flags and system calls are used
 .B RWF_SYNC
 is specified for
 .BR pwritev2 ()).
+.TP
+.BR RWF_DONTCACHE " (since Linux 6.14)"
+Reads or writes to a regular file will prune instantiated page cache content
+when the operation completes. This is different than normal buffered I/O,
+where the data usually remains in cache until such time that it gets reclaimed
+due to memory pressure. If ranges of the read or written I/O was already in
+cache before this read or write, then those range will not be pruned at I/O
+completion time. Additionally, any range dirtied by a write operation with
+.B RWF_DONTCACHE
+set will get kicked off for writeback. This is similar to calling
+.BR sync_file_range (2)
+with
+.IR SYNC_FILE_RANGE_WRITE
+to start writeback on the given range.
+.B RWF_DONTCACHE
+is a hint, or best effort, where no hard guarantees are given on the state of
+the page cache once the operation completes. Note: file systems must support
+this feature as well. If used on a file system or block device that doesn't
+support it will return \-1 and
+.I errno
+will be set to
+.B EOPNOTSUPP .
 .SH RETURN VALUE
 On success,
 .BR readv (),
@@ -368,6 +390,12 @@ value from
 .I statx.
 .TP
 .B EOPNOTSUPP
+.B RWF_DONTCACHE
+was set in
+.IR flags
+and the file doesn't support it.
+.TP
+.B EOPNOTSUPP
 An unknown flag is specified in
 .IR flags .
 .SH VERSIONS

-- 
Jens Axboe

