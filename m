Return-Path: <linux-man+bounces-1343-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0240E928E47
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 22:31:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F2FF1F251CB
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 20:31:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 854996BFD2;
	Fri,  5 Jul 2024 20:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=kitware.com header.i=@kitware.com header.b="EvAxA30J"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3371F1F61C
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 20:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720211511; cv=none; b=bJafuns71dUc5fuKQpH5W4e36K+nbUhM6da09XsxE6VTGLOgOVwOaawXhNoKFsT++TyPVtruyBuOk/qmNeuG0wohJ1FrGIShnwuQPCncrkUSq0fCIecyaXMLO+HPtciDbZ4QlivRp2bjcwy/jGr5fIJZh9yenUzXnqVwrP2QOrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720211511; c=relaxed/simple;
	bh=uMmRoNIliCCSaX7e992CspMNPDI9/1mMkMyaHCAW3Ao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qt+nZw9JIzVGd8C/TRHCWsSibYQxSX1OXDzJ2uZR7lp/5RypCWVq5ucQQOIFmhfmh1ztGQQmQr75cqO69drsJV5hI2ic/5FCPutnPOIOAAPUf2kcmfmXKmPtzisLuy4KrlxWjpepF3WU64WePIR8kaq4KoAuh74Q9AYDXz+0P7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=kitware.com; spf=pass smtp.mailfrom=kitware.com; dkim=pass (1024-bit key) header.d=kitware.com header.i=@kitware.com header.b=EvAxA30J; arc=none smtp.client-ip=209.85.219.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=kitware.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kitware.com
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6b5dd7cd945so11007096d6.1
        for <linux-man@vger.kernel.org>; Fri, 05 Jul 2024 13:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kitware.com; s=google; t=1720211508; x=1720816308; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SiJ1Yo63lqaTOVau6BBBFOCUbAjpiAfeTti131NgYzE=;
        b=EvAxA30J+ZZIDsXzJ8am9jBj+MMF3iZUB7LfI7EXOLIt8+neW40XK+WUqd2SOl1Za7
         rWInbuz94NWvythThIqsw9TnvV1AcWm1Q36QSA3z0zK71MT5cW7JI/02eRHRH2oRJwIh
         +LembDlQCbXjt5zBHM0qhpLVErvtMPbf3WbLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720211508; x=1720816308;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SiJ1Yo63lqaTOVau6BBBFOCUbAjpiAfeTti131NgYzE=;
        b=JdbFI7TcSpGG8U57lJDThX/INnnwe3sid+67VWZX0p9UMm/p4OeLHBaHL5g+Sih+zv
         BamNSYoERl9NG7ugWQ2kPibIgXDyBTtTdHkxalaEexyn+Q00iqZf+dWUhLk0GDlpHvQv
         9M5rwWYSYwtFByrKp693yRX8V47M/MQOzCCl4WhoQQec54to/ckHuamGxbYIXwybD4GR
         GKZ0DLOjsUovcpsMrsnMpOzpoa9OpNYFmuQHVhR4HMpP6mbO/TcwpG4iR2VfdIpmuG3r
         YCyn/iYZPCdK2aMloJxLRF0xuowt/sbhX1pU7Y32ZUXmNQblfWVLfFRBac1o0dz0j8+R
         1raQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5kyLbszn7P4crKcdJ1WbmyOW+CsHQim6eYVGs71fa1RI7H5Wz7sEYpi+jGbil2uxz0FxUvEuRV88DQWn3d4ZPG2spw/4loi39
X-Gm-Message-State: AOJu0YwHWYq07xXTsjgH1OzZrrnGKQtyMuPsrU3sPTpVh99IWtObEDKU
	R0rTSYdjT3sfqHuy8DiH1BVhQGhHKHbAUReD/xoSY1cFqdmk126WtLdyZzzdSA==
X-Google-Smtp-Source: AGHT+IGZgVsno2MB8jCSHyp/Tkk1Uxdsvcwam2XEfuSLdQB6BPV3QvGBkbw1S2qCkLeZxT4xQ8PdIQ==
X-Received: by 2002:ad4:5d69:0:b0:6b5:db9e:2c73 with SMTP id 6a1803df08f44-6b5ecf9d7a4mr66671106d6.10.1720211508087;
        Fri, 05 Jul 2024 13:31:48 -0700 (PDT)
Received: from localhost (syn-142-105-146-128.res.spectrum.com. [142.105.146.128])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b59e5f3568sm76142926d6.80.2024.07.05.13.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 13:31:47 -0700 (PDT)
Date: Fri, 5 Jul 2024 16:31:46 -0400
From: Ben Boeckel <ben.boeckel@kitware.com>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>,
	Jonathan Wakely <jwakely.gcc@gmail.com>,
	Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>,
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org,
	gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>,
	linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>,
	Richard Earnshaw <Richard.Earnshaw@arm.com>,
	Sam James <sam@gentoo.org>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <ZohYMpUBGDydYcTO@farprobe>
References: <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <CAH6eHdSM3dKvonC9YOhSpasvXukv-wmswrcr1g4LR58h203cdA@mail.gmail.com>
 <2naeq6y7bllpma7zsonkpm2kcptiyubtacgluyb4dehdcvqys7@7byxskyncxqf>
 <CAH6eHdQ2j9rwEkHo3GNdohu9fU1iqQvBjXwqY4sX96yjqEjgdQ@mail.gmail.com>
 <ZohUcLoJbi-A1JvK@t420>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZohUcLoJbi-A1JvK@t420>
User-Agent: Mutt/2.2.12 (2023-09-09)

On Fri, Jul 05, 2024 at 22:15:44 +0200, Emanuele Torre via Gcc wrote:
> That is 6.7.3.1p3:
> 
> 
> 
> In what follows, a pointer expression E is said to be based on object P
>     if (at some sequence point in the execution of B prior to the
>     evaluation of E) modifying P to point to a copy of the array object
>     into which it formerly pointed would change the value of E.153) Note
>     that "based" is defined only for expressions with pointer types.
> 
> Footnote 153) In other words, E depends on the value of P itself rather
>     than on the value of an object referenced indirectly through P. For
>     example, if identifier p has type (int **restrict), then the pointer
>     expressions p and p+1 are based on the restricted pointer object
>     designated by p, but the pointer expressions *p and p[1] are not.
> 
> 
> 
> Which would be the same paragraph of the same section on N3047, but
> footnote number 168.

Obviously, we need better types on our standardese pointers. Jonathan
used a pointer of type `footnote _N3220*` while Alejandro was expecting
a pointer of type `footnote _N3047*`. Of course, given that they end up
referring to the same thing, this may have interesting implications when
they are used with `restrict`.

--Ben

