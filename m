Return-Path: <linux-man+bounces-1772-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5243E97239C
	for <lists+linux-man@lfdr.de>; Mon,  9 Sep 2024 22:26:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B92F281967
	for <lists+linux-man@lfdr.de>; Mon,  9 Sep 2024 20:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A91B152790;
	Mon,  9 Sep 2024 20:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gRJrtRFu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5186718A937
	for <linux-man@vger.kernel.org>; Mon,  9 Sep 2024 20:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725913603; cv=none; b=LrQYPPzcr1bfD0P4d5v5U3s/SCbX06BX6WvvVBLSwklBvsW+Y+y9jvHKNlk+Njz6RTMumrY6JZRshl4SSE/kaKn+ggX9PVl+vPQpH4SG/IosKukLZv8MddcFm4jDPnghpCsZz/QB8mBMwo4wYBHQIz9/33VbTT3Z1ZD5PHiE5hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725913603; c=relaxed/simple;
	bh=KKuR4wgJmIKrsEb8PtI8oQAXs76IClyBKId5oLm0nLk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cf7WQ35QolT9GSezq0kHypxME+ajm/pNWnbRXQwqky/CSlZ1fy/MvTbZmAwFeXcYt1G2z/X4JQuGtergshzEr40Weg3N91szYDDu5232DTHnRyFU+kfjYDDlOEtNN+3ZqdxymD1vLreYPL8M/DPsbKdIBI8OPR1SS8q/9HY/hCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gRJrtRFu; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5c3d8d3ebbdso332366a12.0
        for <linux-man@vger.kernel.org>; Mon, 09 Sep 2024 13:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725913599; x=1726518399; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5n0Mwk6FGiq8NwgevCPCTZ8DUHZtuCpI5mvAjzm4r2I=;
        b=gRJrtRFuBBDb7uwqXEyAVlTQrryBHVNvJ0a/JLP8gNgUNIbyulymfdjiFrq+1x3T9f
         ZotF2Z6qR/NnZMC92QJBzNSpGiD21PKB0td5mfX2EFoWWVDO6kpXkjMkeMIEjjesVqnL
         wV2X7Kebo8KrG5NVsvX/KVkmFGiU9UpHRi8ofuLSJwuzYHhUK+3xznU9S6a/Jm5jrHGV
         E5qpdg9jVPTxoa5TYkeP833WJI1prIEq/P0zgevUJor5U82GEQd+Q/ZPcZD3lvo8xKxP
         a379gdckPhbaxxwnONGzz0wXy1U38W+e5OUAfq2g7CJagNfhICW9UfYWVR/PHd0yS4vE
         MSQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725913599; x=1726518399;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5n0Mwk6FGiq8NwgevCPCTZ8DUHZtuCpI5mvAjzm4r2I=;
        b=MlxXSnHe0hQOCD5sToBVRTPA1GlFE7V4qdbGj/jGfT8iqNZAA2OZ5K0Y2Fd41qjp/8
         mPgKmEk5/XC3ioUCF2l38PLeonMSjJI/8f2iq6VyfBJV15ZsQN2P4PzMMq4ytOqsV0/x
         RdUQZGyArkmseAGV0ZJrv2Hh5K3EEA30aD3rjrayAzYLek3FNUW7bMyry0Ie3i1HTNUp
         A3vWlludkOt/JIsa4FWRsa/CSUqo2YXfrIw/v4BRPFpAPaf83PlONtd4BFC7yPSTsJk1
         nstP1OCsFr/0J2vFTk9jCTLWLP79EDzAwMIYPB9SjOYatJP7F8wuw11RXPuE/z1LQ1YK
         V1Pg==
X-Gm-Message-State: AOJu0YyNnz0Q6M1D0PPGZ2BIw4FVU3mZY9HVulM7oI5fbrDTvhuZfCoZ
	eq8cuCzGh+S0h1jIHV4TxPuI4u0/qmcuGufOiITbtEmOS/X83kLN
X-Google-Smtp-Source: AGHT+IG8ujGX43C+rOyP+OL0k4up3uPowNrge0GpA88OdEPuRnc/adpo37fSMkwC4NU+PWFtsKafag==
X-Received: by 2002:a05:6402:280f:b0:5c3:cc44:570a with SMTP id 4fb4d7f45d1cf-5c4015ce2c8mr1008304a12.2.1725913598963;
        Mon, 09 Sep 2024 13:26:38 -0700 (PDT)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c3ebd8ceccsm3391767a12.91.2024.09.09.13.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 13:26:38 -0700 (PDT)
Date: Mon, 9 Sep 2024 22:26:37 +0200
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Jiri Olsa <jolsa@kernel.org>
Cc: linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: [PATCHv4 7/7] man2: Add uretprobe syscall page
Message-ID: <20240909.b1e65f8b63ca@gnoack.org>
References: <20240502122313.1579719-1-jolsa@kernel.org>
 <20240502122313.1579719-8-jolsa@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240502122313.1579719-8-jolsa@kernel.org>

Hello Jiri!

Sorry to revive this old thread with a meta-question...

We were discussing the workflow of using a single patch set for
sending man pages together with kernel changes, and Alejandro pointed
out on https://lwn.net/Articles/989398/ that you have been doing this
in the past on this and other threads.

I have been trying to reconstruct how you have done this, and so far,
my best guess is that the process is to:

1. `git fetch` the man pages project into the same local repo where
   you keep the kernel tree;
   
2. prepare man page patches and kernel patches in that same repo
   (probably using the git worktree feature);
   
3. git format-patch with --subject-prefix="PATCH bpf-next" and a
   revision range that gives both "dotted ranges" at the same time, e.g.

   git format-patch -v23 --cover-letter \
       linux-master..mylinuxbranch man-master..mymanbranch

4. In the resulting mail files, hand-edit the subject prefix in the
   man page commit, in addition to the cover letter.

Is that an accurate description of your process?  Or am I overlooking
another trick or tool that I could use here?  Is this a practice that
other people are using as well?

Thanks,
–-Günther

On Thu, May 02, 2024 at 02:23:13PM +0200, Jiri Olsa wrote:
> Adding man page for new uretprobe syscall.
> 
> Signed-off-by: Jiri Olsa <jolsa@kernel.org>
> ---
>  man2/uretprobe.2 | 45 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 man2/uretprobe.2
> 
> diff --git a/man2/uretprobe.2 b/man2/uretprobe.2
> new file mode 100644
> index 000000000000..08fe6a670430
> --- /dev/null
> +++ b/man2/uretprobe.2
> @@ -0,0 +1,45 @@
> +.\" Copyright (C) 2024, Jiri Olsa <jolsa@kernel.org>
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH uretprobe 2 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +uretprobe \- execute pending return uprobes
> +.SH SYNOPSIS
> +.nf
> +.B int uretprobe(void)
> +.fi
> +.SH DESCRIPTION
> +Kernel is using
> +.BR uretprobe()
> +syscall to trigger uprobe return probe consumers instead of using
> +standard breakpoint instruction.
> +
> +The uretprobe syscall is not supposed to be called directly by user, it's allowed
> +to be invoked only through user space trampoline provided by kernel.
> +When called from outside of this trampoline, the calling process will receive
> +.BR SIGILL .
> +
> +.SH RETURN VALUE
> +.BR uretprobe()
> +return value is specific for given architecture.
> +
> +.SH VERSIONS
> +This syscall is not specified in POSIX,
> +and details of its behavior vary across systems.
> +.SH STANDARDS
> +None.
> +.SH NOTES
> +.BR uretprobe()
> +syscall is initially introduced on x86-64 architecture, because doing syscall
> +is faster than doing breakpoint trap on it. It might be extended to other
> +architectures.
> +
> +.BR uretprobe()
> +syscall exists only to allow the invocation of return uprobe consumers.
> +It should
> +.B never
> +be called directly.
> +Details of the arguments (if any) passed to
> +.BR uretprobe ()
> +and the return value are specific for given architecture.
> -- 
> 2.44.0
> 

