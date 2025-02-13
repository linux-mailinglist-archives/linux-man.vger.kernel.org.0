Return-Path: <linux-man+bounces-2436-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2C3A344A6
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 16:07:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F1073B2A22
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 14:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 434EA14658C;
	Thu, 13 Feb 2025 14:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FeN/EGB5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8258F26B083
	for <linux-man@vger.kernel.org>; Thu, 13 Feb 2025 14:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739458450; cv=none; b=jaBz9EMnwxmi9nxSjeECAFBVKFnxNX+enTL2UZ3kTUCTX2/zwF1osiL2hxGxP3CloM9wfE0CobjzktyR6MLvFe/PROUaGT23xyiQ1SfY9ojUumasGo829JQINgk+D0S0qM10z1ZJjSxxXjnSgRQZyFF34OujxpeTFNfBZZw8sSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739458450; c=relaxed/simple;
	bh=4QFWwZtGRggmRDdEc3m9my7dKDoGDb/GrZONo2rVo3E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cdSLcu+D4OZsJv1pgx4WvhMHFJL67djY8EKzFdRJuioDQhjytpbwGayFDbhzFE25v0VLrRiZtndsnRp1k567L/NsCjf9v81ocd2Ru98kYU6cjtfnreMasoDwD2ExauyB67rlgvh1FDWN+XM3Myd9346SoX2AUC5qjsKqgulguWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FeN/EGB5; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6fb3a611afdso4901007b3.0
        for <linux-man@vger.kernel.org>; Thu, 13 Feb 2025 06:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739458447; x=1740063247; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DviA6XKmcFBqhMCrDPspO+v6ltyQfx28WQMhN49nrRw=;
        b=FeN/EGB5A5wZ+p+WI7xQ52WKhF1rkZ63Z/SlCM9JLCAuloF2pc+U0OzIfBc58IE0eY
         zqtSVf6gEftqmVH+XUXgZLEJEdqyjvZ1GlCflUhmlst571BfuL5vQoA6Ds3ozrp8eSF6
         k6FV4+aaugqND/erU9bBswJMRTyWZWlImnHnWXsoYHGdnJYcKtZP9pZD3Cv5UtnrQONu
         axdp/msGFBlSkNApd2Q/t6h9JqLB1srt79A67FW45/w/PeNBgg/5EQ5DE7sogo91nm0c
         1f1Yz2zgu4hE9Fje1/xQePavQA+uvwQplcFrQs87eKNgvQNjUgD1UlLv96Czl7p+ORUA
         xuGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739458447; x=1740063247;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DviA6XKmcFBqhMCrDPspO+v6ltyQfx28WQMhN49nrRw=;
        b=gM0qdxTDmrgKkNIR73FMM5JCKwgFCsS9kuLjYe13Ejnctc+HZzi776xYEqf1+gtLFB
         PEy0xnsYJqgT7zS0FNmc5ABgaLE3R1t0X9o+MyxGD7pz0u2rYlOZjvZjphQKXE+HREzi
         UalULJyxr97P3KEt2+O2jwwl7FpxNGH6rbUsxckdNzEfAhEY5Ij5qH/Wib385PDh76sZ
         95+bqUo7FAqzrW9Uhz04in8T2qCojeN0WXZDIdFyM7h5I5re6wUA0N/p3T+nAQZhdHOH
         KJLdwQMS1h5AKBT3zEyxLGrzNWrGua6UE0Uzgc8fnkxu3g8CcIfRevtf4xKATDGljEbW
         mmfw==
X-Forwarded-Encrypted: i=1; AJvYcCUCGvwQR0k+ujDOJJ5ti8R1zS9/OSBq9Y+hqw7PVhSAJB9YctuuR1nvC4EM1ForrBCKFQqNFi2+qUw=@vger.kernel.org
X-Gm-Message-State: AOJu0YxwxRq6Qqp6WLpSB+XDQLcejyQiy/gx+QEym9SezzbP3LTZsOqZ
	tTp7F+8Wk3vX5NeYl5HhVdKW/qldAy8ZM8+SRZCNHODVw3QbFR84Pdd2iw/v+dYDGDbrpkuxfa6
	jGa+ZIpFeexayxYlRvqU6/Y5/9zn/FOQM
X-Gm-Gg: ASbGncvKgXfVKuk9PBz9ts624Wk1s14BdmFoB+38KjCU3fhS9PpaPXKCRgHCKdxTeqG
	qrkoGYMVrZmoM+GppmPTRKS7ilWxeXzi3yBieoxvUvQDCZ+KhJQpKnviPAww/UZDCC41pFmnOVN
	vU89L5pw6o5iSPi97/TWWsohsVhQ09vQ==
X-Google-Smtp-Source: AGHT+IH6jxrdcTCrhmSNpB+wy2P8psjZJwUAW+4y32ApPnfLLxsQjGVV02+axK4iNabIokTqZSJwAg74zCG6/yQx1uE=
X-Received: by 2002:a05:690c:f8e:b0:6fb:1c5a:80ec with SMTP id
 00721157ae682-6fb32c56800mr33268677b3.3.1739458447454; Thu, 13 Feb 2025
 06:54:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CFA0E560813A3A3E61A09CA6E52422E0.for-standards-violators@oclsc.org>
In-Reply-To: <CFA0E560813A3A3E61A09CA6E52422E0.for-standards-violators@oclsc.org>
From: Dan Cross <crossd@gmail.com>
Date: Thu, 13 Feb 2025 09:53:31 -0500
X-Gm-Features: AWEUYZki1t1QS4GmCsOSOGx50t3jLfmtCqQ_nAs5W6bgF9--MxAJxK4cSjWukWA
Message-ID: <CAEoi9W5kzW3EqTE9uV_6RToxfXhp_-Hu5B-b-v47DF=QVeU7MQ@mail.gmail.com>
Subject: Re: [TUHS] Re: Unix V10 Volume 2 PDFs
To: Norman Wilson <norman@oclsc.org>
Cc: tuhs@tuhs.org, alx@kernel.org, nabijaczleweli@nabijaczleweli.xyz, 
	linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 13, 2025 at 8:05=E2=80=AFAM Norman Wilson <norman@oclsc.org> wr=
ote:
>[snip]
> -mpm (mpm(6) in 10/e vol 1) was a largely ms-compatible
> package with special expertise in page layout.
>
> [snip]
>
> I think the odds are fairly good (but not 100%) that
> groff would do a reasonable job of rendering the papers;
> as I said, the hard part is the macro packages.  I'm
> not sure -mpm ever made it out of Research.

If it's the one I'm thinking about, then it did make it out in drips
and drabs on Plan 9; it was in the 1st and 2nd Edition distributions.
However, to be used to its full effect, -mpm also required a
postprocessor, called `pm`, which was written in C++ and built with
cfront. Probably for that reason, it was not distributed with Plan 9
3rd edition or later (the later versions of Plan 9, available under an
Open Source license, did not include cfront).

All of the historical Plan 9 editions are now available under the MIT
license and available for download from the Plan 9 Foundation. I just
checked and it appears that mpm is in the tar archive for the 2nd
edition; one can download that here: https://p9f.org/dl/index.html
(It's probably in the tarball for the 1st edition too, but I didn't
look.)

Note that the source files for sys/src/cmd/pm are all named
"whatever.c", but are C++ code in disguise. At one point I took a
swing at trying to rewrite it in C, because the idea seemed cool, but
other things took precedence and I never got back to it. I haven't
tried to build it with a modern C++ compiler, but it probably wouldn't
be _that_ much work for someone motivated to do so.

        - Dan C.

