Return-Path: <linux-man+bounces-1326-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67195928C1D
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 18:11:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21609284A38
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 16:11:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40FD2148FFB;
	Fri,  5 Jul 2024 16:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J1JjQElR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CC552B9B9
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 16:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720195911; cv=none; b=bByWhA2905ZETkMjZ6umqKbOYf5GBpAuhZt22bKcs1xbZMhspOZ4SBNybnl4PTeFb5HChRQmB3YD6jM+S414MvcLjmirAePT6Bc0cK1lRk+tEHT3A6DS7SROGTV6LPQt0ifgKzE3Ag5v+DatiXZCzr/MagqN1bTtecaODzvR9BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720195911; c=relaxed/simple;
	bh=vJaww+FOWHqiFSl5UCOcSbW6f+tP5CTwORpcqDKqKjw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Gh+mCJzBzwVbdxbOpudUzreLr7hISzmof1HZMltmvLF3Ir54jQ25kZ3u0I935qstGS+l7/gfrPHuO7miQ4pgD4xT4TM+eyigGS8N/At5XN5w84MlBmH8F1jpGLmyeLlSrESjlLLPZNkla8qXPcVwf5r9edmadcxhMTm9w42vOQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J1JjQElR; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a77cbb5e987so104560166b.3
        for <linux-man@vger.kernel.org>; Fri, 05 Jul 2024 09:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720195908; x=1720800708; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vJaww+FOWHqiFSl5UCOcSbW6f+tP5CTwORpcqDKqKjw=;
        b=J1JjQElR84EWTSr9tIEFE1iCvaxkQW1ORz0EnFx/8RidKuY/9nD9CGS48BposjvCQI
         9Ue4V3o7qCX3AwQgeDfHu1Im5bfpmT7chmmnBnTaueHgFBNmelZOyjc7X4rp6DTD/miJ
         UAluWwYeLkoZ80N6VE5VeWeULnU28wkx04L6JnhkjImNVOGeEE0bFZ6TeAve8y1RNl4u
         +4NB+N2myol0esnI19cwZzBoI69KVuxbRatK908L78J8dlMK14aEqYzwgMdv9NMF/qV7
         iAtycYplRXUprB0jQ9bL/dAijZxosViXSWtd5i8CnrmZsFh4w2donwcJyB/Wb9rMAZsX
         qx9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720195908; x=1720800708;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vJaww+FOWHqiFSl5UCOcSbW6f+tP5CTwORpcqDKqKjw=;
        b=VWyTQw9xDO2xBIju4cuDo5tuQBaUSKRMgmgLdEcclj7ojwbpx3ZR8SLJ+3XNo6JfeS
         8xzALrk0vbYS43xnu6WwTN1Gp9nUQpd5uiNgX6n7mDd1Y/mtV9uvDzPP01plBZ6StGHJ
         T0LW3rvbCyzlO7KQ081dG2y952jNyXE6FibTqV4mq/rRQ7Hqi7a7bgenfjCL93/ju+F2
         Roa+Bs29SSPQ8K8PW4FhRerHfAH4Q8Eke4I9QZUzXc0VU3jWplC7o7gQ/guMWtk+Se5t
         lmVSid8gF9WvxR5H/IFGFuUr6poI6obz/o0tTJMNLrNR8r7hPzuQkgOMlKLtYcBnKIIb
         5HvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdU3XeltrNxnPJm2hEy88zS9x2Knz3Yjv7P73l8K7zp+edxxzNRIvyXRQZNgoQ+8TG6EUBRB9Y5uD3dLRopMJce+w9zhPMOcJg
X-Gm-Message-State: AOJu0Yz6H3PPuo3Szj/B4t3Oc6376d1LlwaVia0B8WSqV6fLSzh2xNU1
	ZKW3uZGLlLWfSfJKIBX7ABH44A4gptT515h1bY6HLLnbnvX5GQd4u9BBV8DGKaFr5igbFnRREbR
	diGtgX+VdRV8OZiPxupfRUE6Y/HMPfw==
X-Google-Smtp-Source: AGHT+IG+4fEKAeGG87VvgC1x6qJ+YwIYqA2B2jsiAB0M9zNo9fL+H4hEJmxIDLDzrJI9zDTNfdmF6VBhjbpNBkZtIls=
X-Received: by 2002:a17:906:f0d1:b0:a72:af26:1a12 with SMTP id
 a640c23a62f3a-a77ba468151mr338711066b.18.1720195907412; Fri, 05 Jul 2024
 09:11:47 -0700 (PDT)
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
In-Reply-To: <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
From: Jonathan Wakely <jwakely.gcc@gmail.com>
Date: Fri, 5 Jul 2024 17:11:35 +0100
Message-ID: <CAH6eHdTqVjaUERRpA+m-ikFmuYPSzQTm+aaa_f__duVht+74pQ@mail.gmail.com>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like functions
To: Alejandro Colomar <alx@kernel.org>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>, 
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 5 Jul 2024 at 16:54, Alejandro Colomar via Gcc <gcc@gcc.gnu.org> wrote:
> At least, I hope there's consensus that while current GCC doesn't warn
> about this, ideally it should, which means it should warn for valid uses
> of strtol(3), which means strtol(3) should be fixed, in all of ISO,
> POSIX, and glibc.

I'm not convinced. It doesn't look like anybody else is convinced. I
wouldn't call that consensus.

