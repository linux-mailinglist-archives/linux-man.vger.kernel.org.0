Return-Path: <linux-man+bounces-4802-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A56BDD1B00D
	for <lists+linux-man@lfdr.de>; Tue, 13 Jan 2026 20:19:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9CA21300D662
	for <lists+linux-man@lfdr.de>; Tue, 13 Jan 2026 19:19:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E949534F26F;
	Tue, 13 Jan 2026 19:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NRGAOOHL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4798836AB51
	for <linux-man@vger.kernel.org>; Tue, 13 Jan 2026 19:19:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768331954; cv=none; b=StfHlFXhHTpvYHlOVmn/E+I93XyiyP8fiPma27CSSzY+UFuxv5pzueqMRluSSs9Q8guuinFagEcb635P1gerV72fnGGBLmLeY5FfjWptchKuiOOTlphIZGd9YcMm9X/aAFt4KUFO/p7yRtlMFSVSpMjaWgb318SfEqvPMT6M5I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768331954; c=relaxed/simple;
	bh=avFR8J2S6t8dHGqQTUCWY1PvSJNqG1OSlXBGlxh2TmY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZXqY09EH8GlcMZtV44gmCTosQresuPhM7LP8OzdDG8c2rLQ4t+6CX69bm1zMP39e6Ydn6zT4edmjtNfS4r7jE5twbDUbr3XhvNLwY+4lmBVwgZ1yXZ8HYFaPdIzhjSyR80J8VxedKSG6pAKH+WuubvMfTImQKscSGOB/OvCSxGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NRGAOOHL; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-652fec696c9so2152946a12.3
        for <linux-man@vger.kernel.org>; Tue, 13 Jan 2026 11:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768331952; x=1768936752; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JjlNubhRTyC7FMfNR79tQERybAGNM6CDBGTDv0C31+o=;
        b=NRGAOOHLJ+X0k3SNgfmt4a0uxQxvSLR6KKLIzHI76NEyBUNm0pHkjH9eiNz5flCfri
         jBGEV1+t04VGwd1FFqQ6/jQP8pqGeGBH+/GHV0qvI6H6P0AutsJkGOfZThrodJsKd+ba
         iS3sw0SHDuGlB1Gr5vYyMDXPYD8K/mmmRpIgcaZM5IarYyinK0s5QHcPpLOI8SRWe2Ks
         eTxV8v+1XwdRSLxYOsYzVGDHCLcIeZ1ZSGshgjZjuLh18xMTvtA6gC1t3rx2L9X3ZA4C
         kgcxFgcAjUpbBv1iMUs1CQuJAtvw424CkrfKARb3W3RUCXg/cLCaYJDAE6Gnt/Cw53C0
         AOJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768331952; x=1768936752;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JjlNubhRTyC7FMfNR79tQERybAGNM6CDBGTDv0C31+o=;
        b=gc4Wvoh8RpY3xlRDxTFlU8t8MwNLu8M8wNt0u/StoOTj3H56nF8+9UtaBjBJZMeb0B
         5z493xiupmX7rKAQ5AJYRJNFP5Y/04zgNKrBtv0bqJ6K1OLlLeNDJCrtxtbJo8NItAHQ
         4tQrBohLaCKxjrY0cfZ0RVgOPiJe5lNbnKYs+Ne713R142P3gIaB3RMEQyliXf4ozgFQ
         NpoakumqMqU0/xpVCrUn5lqA28S5J0w6gjG9Avu28w24QFdWdVNFhHh5ax5i7UX7zTFf
         Apcr7214dvJ/L+w74ZzcMY6TtiNJLDwVlBCJvurh9ZuqjiiMDlhtZpOAByCc73gVQeZl
         dxtA==
X-Forwarded-Encrypted: i=1; AJvYcCUEBjlvC/fhUCbHFP64HwMqBN6tVjDTZzNX/Fn6b10sIpX+BId878qOZGeWPNvF4g26yb8pVPdP+fU=@vger.kernel.org
X-Gm-Message-State: AOJu0YxRjuA36ClTtWJIszqOtF7MiYXiU/C3PtT7mYnCGZSNTEKS0Do2
	59sVMs/CvjhbOnc2w7jAUP8RSm50cT53eEB9XgQIj7LWdK0zhn7oAdnB
X-Gm-Gg: AY/fxX4J9tZ65yHKyaAJBn5UZnXI/KNL1wqan3P9cpcYAIn+Btf9sy1AYJpen9iOanu
	m/wizW3EmgNITtInyy514TZbgtXFTwvNFlFaUkAUlQ6LoUv+B/m2Vtg+q1rN3XPEGusoq33UmAF
	xgSHJnDAW7lZxo8CEF6zd/1MSzrypRMlGyUO/H7esm2uyLJjWpEZAG2W19bXowlANmdL0jrl6D9
	X+1bBmEUHyccDzbCmEYQUtUpEuJVRnxH8/l87tbJt2B1m1wT61e6MJDvqjX8EGKzAYUiIGXj9NQ
	UoE0uguYEh7CCH691qK6B8c57OY1FP8Mp5psLPklFIpeUO2/PZpmpyvzQ2E08Y05MYGasW1Csy2
	1K2o3ZOfqUFaFEKkAUihg1ij3kJedjCy8tufs0CsF2cWl1ZZHhceOORmV01ajt1GPYYW3FVi4A+
	lHiW9uADcgZam9Fr03JA4kv14Ltq4KSc9kwMBW
X-Received: by 2002:a05:6402:2548:b0:64d:1a0f:6969 with SMTP id 4fb4d7f45d1cf-653ec101831mr72992a12.5.1768331951469;
        Tue, 13 Jan 2026 11:19:11 -0800 (PST)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b8c4c15sm20855277a12.4.2026.01.13.11.19.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 11:19:11 -0800 (PST)
Date: Tue, 13 Jan 2026 20:18:59 +0100
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH man] landlock.7: Re-group description of IOCTL access
 right
Message-ID: <20260113.44fa9e91ef9a@gnoack.org>
References: <20260112194520.5854-2-gnoack3000@gmail.com>
 <aWWJ5VhPwvKCVwRk@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aWWJ5VhPwvKCVwRk@devuan>

Hi Alejandro!

On Tue, Jan 13, 2026 at 01:01:22AM +0100, Alejandro Colomar wrote:
> > Cc: Alejandro Colomar <alx.manpages@gmail.com>, 
> 
> Please remember to use <alx@kernel.org>.  :)

Thanks, updated my helper scripts.

> > Subject: Re: [PATCH man] landlock.7: Re-group description of IOCTL access right
> 
> Please use full path of the manual page (this can be done with the tab
> key --autocompletion--).

Done, will do.


> On Mon, Jan 12, 2026 at 08:45:17PM +0100, Günther Noack wrote:
> > Move the description of the LANDLOCK_ACCESS_FS_IOCTL_DEV access right
> > together with the file access rights.
> > 
> > This group of access rights applies to files (in this case device
> > files), and they can be added to file or directory inodes using
> > landlock_add_rule(2).  The check for that works the same for all file
> > access rights, including LANDLOCK_ACCESS_FS_IOCTL_DEV.
> > 
> > Invoking ioctl(2) on directory FDs can not currently be restricted
> > with Landlock.  Having it grouped separately in the documentation is a
> > remnant from earlier revisions of the LANDLOCK_ACCESS_FS_IOCTL_DEV
> > patch set.
> 
> If I understand correctly, the behavior has never changed, and the
> documentation was wrong.  Did I understand correctly?

Yes, that is correct.  It made more sense in an earlier version of the
LANDLOCK_ACCESS_FS_IOCTL_DEV patch set, but then did not make sense in
the final version any more.  I missed to keep the documentation up to
date.


> > 
> > The same change was also done in kernel documentation, linked below.
> > 
> 
> Could you please add a Fixes: tag?

Done. Thanks for sharing the handy git alias as well - this is very
neat, I added that to my toolbox :)

Will send a v2 shortly.

–Günther

