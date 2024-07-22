Return-Path: <linux-man+bounces-1508-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C589394E0
	for <lists+linux-man@lfdr.de>; Mon, 22 Jul 2024 22:44:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D737D2826E5
	for <lists+linux-man@lfdr.de>; Mon, 22 Jul 2024 20:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34FBC38F9C;
	Mon, 22 Jul 2024 20:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b="Wi6DfehG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D6C3770D
	for <linux-man@vger.kernel.org>; Mon, 22 Jul 2024 20:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721681060; cv=none; b=hoDEMB8B9dZyCVVOkQpDPjnu5BwPbc9nk6fjyqLzb+f7RPC1pHMQurwlDhOcVBOqycYixQ0HoJTMGb0OWOm7CzWW3wMToBDiWuPZKD3KUoxIDfxpippTUaGDkF68O7athwAq0nPpwhFL7bpKhmYq52kYWSPhQE65Pa1tHoGR4BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721681060; c=relaxed/simple;
	bh=g2vVTGvUlZey3Q4HtJ2+ZNxrJKbuN+qKXvYQfKvt49c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Av2cEy3bn25VQpf9Bvd91OG7h3dmq7/y+5Qnd0pFL44C8YI2qF4mz4hHARotRNpekHVcsbu0r4bQ7NKU6BcofFgf4hjruT23W5eynjIkxL0jIshIUfPSxcZbAg8/91Tje33ZAMWQKrWd28DLKp4K+PZ1mWF4UuSnfxpbU+rK6Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com; spf=none smtp.mailfrom=toxicpanda.com; dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b=Wi6DfehG; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=toxicpanda.com
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-64b417e1511so46967317b3.3
        for <linux-man@vger.kernel.org>; Mon, 22 Jul 2024 13:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=toxicpanda-com.20230601.gappssmtp.com; s=20230601; t=1721681057; x=1722285857; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SV2iYGR1KM3dIkIpOoHEA7QZBsFJWDHQUZhMnl3YBGo=;
        b=Wi6DfehGAlGlPttgjNKbUWdokgpNrx0xbTymTwavH+f/pno3JcF8LZRgJOlkUAmUVM
         KOmWE5Zb0Tl4bj/+auhVTh54hZRCZzci/yYk1OPXyWH8/GlcAs8sxonRJnJ1W5FHzX44
         dyJtS6YtxPUXLsQN20EVZoVhRCju/4gi4LkHT8o5qoSByK/18CZnpgqcjFyJA/f28n9f
         0PYjTIugIKjy1esf0E1y9G8HzXmip/2hNHlSP2gOAZaUCpE1h1XcO3+eME6+S/nVrt4d
         fMw/HBRLFw0gFvyvYVfLbv5GZCuTz4NfQhUSP0FW8VQedTy/OIIIPeD7v/Rr60Fr9bWi
         mDlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721681057; x=1722285857;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SV2iYGR1KM3dIkIpOoHEA7QZBsFJWDHQUZhMnl3YBGo=;
        b=XMWim8EmUckMGXmI3uqmICy/K0TZ3DZKz65FExl4tc3U8K1DtXBFsjpVTcIifbsktD
         9TOILXtVeCiJTvypmQghPIvqTevyljN1+raURAXK0Dd0npoGmCELeBnF21dOOfOKs1zr
         8UyHhan5gyS0LB+ULbDCTwruZlipxX3rh1O8cJci3sb9fzAQdEPCEKUxu3KcV5ksVl7j
         LswXYuPS0SEbkg2SJhdDEFX6QiPi5p5HCueODMPbYbQJb5srROMBfS7HpVSNuTqtjode
         W9Q9jXtiz7g8t47FotgacTCImxQCm7VbMTNFQjwhPN3EPE0RuWO+JWv6pPejk5CLFa/R
         98GQ==
X-Gm-Message-State: AOJu0YxyJI4NGDViOO5NXBFG1aBz+3s4ujwz3yetg+cr6jeSRcUsniyj
	wxJ7YG+LqeCoj2PyShGGiZgxhIFjVt+bu+UEm9UIlYZqsUKkCQjLuOcjj9h02nU=
X-Google-Smtp-Source: AGHT+IEAaxw2OrTbAMMnIDl2AdKFb3zN9efMc+tbtwNp7csZO9lmx+ar8LdHRRkdGy6AcV1d9WkD8g==
X-Received: by 2002:a05:690c:3303:b0:64b:9f5f:67b2 with SMTP id 00721157ae682-66a6588e566mr95631697b3.31.1721681057196;
        Mon, 22 Jul 2024 13:44:17 -0700 (PDT)
Received: from localhost (syn-076-182-020-124.res.spectrum.com. [76.182.20.124])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-66951f728bdsm17620857b3.23.2024.07.22.13.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 13:44:16 -0700 (PDT)
Date: Mon, 22 Jul 2024 16:44:16 -0400
From: Josef Bacik <josef@toxicpanda.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, brauner@kernel.org,
	linux-fsdevel@vger.kernel.org, mszeredi@redhat.com,
	kernel-team@fb.com
Subject: Re: [PATCH v6 2/2] listmount.2: New page describing the listmount
 syscall
Message-ID: <20240722204416.GA2392440@perftesting>
References: <cover.1720549824.git.josef@toxicpanda.com>
 <2d72a44fa49f47bd7258d7efb931926b26de4004.1720549824.git.josef@toxicpanda.com>
 <54hz2cqibnocv7jtv6sxk3dta36bm32i7f6tzdqcjmtf4cmfyt@cv2g25p733y5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <54hz2cqibnocv7jtv6sxk3dta36bm32i7f6tzdqcjmtf4cmfyt@cv2g25p733y5>

On Mon, Jul 22, 2024 at 10:27:23PM +0200, Alejandro Colomar wrote:
> Hi Josef,
> 
> On Tue, Jul 09, 2024 at 02:31:23PM GMT, Josef Bacik wrote:
> > Add some documentation for the new listmount syscall.
> > 
> > Signed-off-by: Josef Bacik <josef@toxicpanda.com>
> 
> Thanks!  I've applied the patch with some minor tweaks:
> 
> 	diff --git i/man/man2/listmount.2 w/man/man2/listmount.2
> 	index 212929fb6..8f7c7afaa 100644
> 	--- i/man/man2/listmount.2
> 	+++ w/man/man2/listmount.2
> 	@@ -4,7 +4,9 @@
> 	 .\"
> 	 .TH listmount 2 (date) "Linux man-pages (unreleased)"
> 	 .SH NAME
> 	-listmount \- get a list of mount ID's
> 	+listmount
> 	+\-
> 	+get a list of mount ID's
> 	 .SH LIBRARY
> 	 Standard C library
> 	 .RI ( libc ", " \-lc )
> 	@@ -14,15 +16,15 @@ .SH SYNOPSIS
> 	 .B #include <unistd.h>
> 	 .P
> 	 .BI "int syscall(SYS_listmount, struct mnt_id_req * " req ,
> 	-.BI "            u64 * " mnt_ids ", size_t " nr_mnt_ids ,
> 	+.BI "            uint64_t * " mnt_ids ", size_t " nr_mnt_ids ,
> 	 .BI "            unsigned long " flags );
> 	 .P
> 	 .B #include <linux/mount.h>
> 	 .P
> 	 .B struct mnt_id_req {
> 	-.BR "    __u32 size;" "    /* sizeof(struct mnt_id_req) */"
> 	-.BR "    __u64 mnt_id;" "  /* The parent mnt_id being searched */"
> 	-.BR "    __u64 param;" "   /* The next mnt_id we want to find */"
> 	+.BR "    __u32  size;" "    /* sizeof(struct mnt_id_req) */"
> 	+.BR "    __u64  mnt_id;" "  /* The parent mnt_id being searched */"
> 	+.BR "    __u64  param;" "   /* The next mnt_id we want to find */"
> 	 .B };
> 	 .fi
> 	 .P
> 	@@ -45,7 +47,8 @@ .SS The mnt_id_req structure
> 	 is used by the kernel to determine which struct
> 	 .I mnt_id_req
> 	 is being passed in,
> 	-it should always be set to sizeof(struct mnt_id req).
> 	+it should always be set to
> 	+.IR \%sizeof(struct\~mnt_id_req) .
> 	 .P
> 	 .I req.mnt_id
> 	 is the parent mnt_id that we will list from,
> 	@@ -69,7 +72,8 @@ .SS The mnt_id_req structure
> 	 .SH RETURN VALUE
> 	 On success, the number of entries filled into
> 	 .I mnt_ids
> 	-is returned, 0 if there are no more mounts left.
> 	+is returned;
> 	+0 if there are no more mounts left.
> 	 On error, \-1 is returned, and
> 	 .I errno
> 	 is set to indicate the error.
> 
> Would you mind adding an example program in a new patch?

Yup I can do that, I was going to follow-up with a patch for the new extensions
that have landed in this merge window, after the final release has been cut.  Is
it cool if I wait until then, or would you like something sooner?  Thanks,

Josef

