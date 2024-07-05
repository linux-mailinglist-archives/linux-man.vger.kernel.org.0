Return-Path: <linux-man+bounces-1329-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C60928C2A
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 18:25:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85055286928
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 16:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90DB4225A2;
	Fri,  5 Jul 2024 16:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J+fHQt9a"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB32316B39A
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720196695; cv=none; b=o7iX7FCDBpsG5P/D+6PrBO97892nQ9E45VHUkvkEtROyn3wtj4T+vJHE7inRGkiFoge4G+/lCxnqNhKaMiYPLaOVzgvm/iWrXGrnzYgmVbVveBqZmmOvCIO9jvfML5j+M1GFY0sFK+jnhaaBcI78k608+rK02fzqoFS4agtpOrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720196695; c=relaxed/simple;
	bh=z0OorA0wh//3Sjs/MBigcwf8MK8OJqXX38gxzn5ukiM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=apuMFIYOxGJ2fTmI7HhF9gcMagD3dqZD99Tow9obyk2xRxfE7duq2zFnIQeBfX4BVaU8d+L9ODgyMCOe5H1dyZHkd8FHQda5v/pddo6FUkp8W2JomtjkqldAlFrW7VRDjmaxq7qhMLmZmLxs3a5uPJ/+8OJeB4jFA+3+9H1wkj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J+fHQt9a; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a77abe5c709so232088566b.2
        for <linux-man@vger.kernel.org>; Fri, 05 Jul 2024 09:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720196692; x=1720801492; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/Ap1F0dGFcV34/9AbpZVyujoAbYMzQeJuPKwKM98/co=;
        b=J+fHQt9aCjjeNJybB/l5naZ8R2osHHJDRLd+RfdaCsmhQFbmzu3/sY9JV2oK7WLAiL
         Y+iiHxPO6ktf0BfbQTgMf/NVk+q76TVZpY3G/+fnz41gKizSq/c4hWyCefGzLdc9eP3q
         8HdSOOP7WAAD7q0l/dvsBA5bmYG8B21xnIBSDgMZvkACvN18NHJddbSgSxM9AZe6zvWH
         sxS3gMMyhYAlSliJ+gLAPLbkAnWZ3GloHqC90skCxx0Zvq9OmSVHp1yxiVll6lD++xZT
         P8Q1fQ5KLro5sLSOS1YlUkqb38MWpVg5XNthl5XE+0+Ilszb0eljxRwuVNWwQL5YRc+u
         RbiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720196692; x=1720801492;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Ap1F0dGFcV34/9AbpZVyujoAbYMzQeJuPKwKM98/co=;
        b=i09QXTkP6iFFaSiyiJenKAs7dTA1HdJY1uMSVrizlVORjkDdGKGlhSLzpvKKp/Kcg0
         4hspx4j6yMn0oxXU6Z89URtGwCHN2c2TUm9tSz37nSlo5nPptPTV2Aou+YjSjdzFJDgo
         eaEYhG00a/Vu3A4QTqnzFbUdZ+pRRHFb9AjQhD379nNpeZkaBCGOBiXH+4SvkUjw6Wgy
         lEGfTPeUZ9G20GOjlZjIqgB1Qe2440nP/FnXCyVfpGaYP8LpK2sObiwLSbnf2+WpP9d8
         +DTKYlCHMGugR33IuUOaqOO33PSNm+vsPcNloQD60IHMNbVUndmBcMg9HXU5HlXDqF8d
         UfKA==
X-Forwarded-Encrypted: i=1; AJvYcCWaugcPaiMZn7GB3KUYRw2dKiTFBAGIvO8FNwPuEUxBx+og7hhgWtUJ4EY8hYby37mgC8iQfb4RCb0qkiXJonzi0fu8ZNPo1v23
X-Gm-Message-State: AOJu0YxnJxit4/0u9hRysbFEKw6rb4TKJ59Fo+F8cKG8dlDej467guXo
	+fnMKa5gj4paslh9higut30QK5MYMy6GJvQ+t17OZHxZHqXZxwjwZQO4YzXdasls1TFx+bzk0Vt
	M4wXqZF82ica11toL38RNNKtstQ8=
X-Google-Smtp-Source: AGHT+IEiNIdsBt4rBrMm7HE4dM305kaCpYx4zB2KupvqH73iKj52m/KJoqWhU4hs2nuFq2BtmErJP8xIn72cVkgZuvI=
X-Received: by 2002:a17:906:3b12:b0:a6f:4fc8:2666 with SMTP id
 a640c23a62f3a-a77ba70e48emr377050266b.44.1720196692022; Fri, 05 Jul 2024
 09:24:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240705130249.14116-2-alx@kernel.org> <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de> <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de> <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
In-Reply-To: <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
From: Jonathan Wakely <jwakely.gcc@gmail.com>
Date: Fri, 5 Jul 2024 17:24:41 +0100
Message-ID: <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like functions
To: Xi Ruoyao <xry111@xry111.site>
Cc: Alejandro Colomar <alx@kernel.org>, Martin Uecker <muecker@gwdg.de>, Jakub Jelinek <jakub@redhat.com>, 
	libc-alpha@sourceware.org, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 5 Jul 2024 at 17:02, Xi Ruoyao via Gcc <gcc@gcc.gnu.org> wrote:
>
> On Fri, 2024-07-05 at 17:53 +0200, Alejandro Colomar wrote:
> > At least, I hope there's consensus that while current GCC doesn't warn
> > about this, ideally it should, which means it should warn for valid uses
> > of strtol(3), which means strtol(3) should be fixed, in all of ISO,
> > POSIX, and glibc.
>
> It **shouldn't**.  strtol will only violate restrict if it's wrongly
> implemented, or something dumb is done like "strtol((const char*) &p,
> &p, 0)".
>
> See my previous reply.

Right, is there a valid use of strtol where a warning would be justified?

Showing that you can contrive a case where a const char* restrict and
char** restrict can alias doesn't mean there's a problem with strtol.

