Return-Path: <linux-man+bounces-1355-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 694019296EF
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 09:15:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF253B21990
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 07:15:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A312D4A1D;
	Sun,  7 Jul 2024 07:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gAY7o1tu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FA3D26A
	for <linux-man@vger.kernel.org>; Sun,  7 Jul 2024 07:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720336529; cv=none; b=AzghZzxb+JPdEZhdIW3tuuoTQHpXcQWZ0jom4muHzh8WSoBJInyVUlpXubwCAaAZ+EtAUVO3tw1qW423u3mEwWABVUdrFt6ZHjqtsI1SXOPpDcsOizRF14J1fqgfq4v1Cbo2iBu2E8GsH4/HPNuJmI0MnLjluisTk5p7c5LgSnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720336529; c=relaxed/simple;
	bh=5dTnrwwhAznQKAHDNZlkOWM4tm7sUUw3dcEjsYifC+Y=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gmc4biiOEEJTmDFz05m+jCexLJCT4JH+yp/o4J0wiPz0NsC5XrlbXwfu4QDq6D1bIW0JxoMtEdEho+8afn4AiBIf8/GZ0o2kd+cspQZEpCnR7sZotVjdclGXKAfrMlf+pArJtGpSMrHf9Roz5wmDvowSz8lIjaThLpYZc5mbz1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gAY7o1tu; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52ea3e499b1so2531459e87.3
        for <linux-man@vger.kernel.org>; Sun, 07 Jul 2024 00:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720336526; x=1720941326; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8yjKOeldYXOdy83SO7tWRHYuSRPJCnHVzQea7d9NDMk=;
        b=gAY7o1tujEfeUzDLJbJkDTn1jRj/6DhCQcbkllB9KTaxjwqlTs1O1MEK0bu8GXKHZi
         k80xpeurT5fsqg5r9JIUP14rF85MMaJNRDb1rwLVHlNIUche/uBE90TbgTjjFtApErSL
         6RG8EXCCpuU6J9mLj3KijbzlxEP5X+yctfuPAlCl2GsFI95RBWkmDQLXm5LfhUK/H6Xe
         b1znXrO7WNggl4OBuIrdlOXMfhnu4Igoa+6VHz4OfyLQ4BE22///GYZpXI/oA0P9n2nk
         kicbwjSeSTfof5obLoF1/xNZYhsnusgqe0/yNUarEWwxbn5UXMw9t+Xd8tvV1HNKO6hb
         CpAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720336526; x=1720941326;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8yjKOeldYXOdy83SO7tWRHYuSRPJCnHVzQea7d9NDMk=;
        b=wz+WRKmQ/VzS3C/rhT7yx7EjrpMJzWwWvjtOuOQ8dWc1HrlUTckSfCwvrYMyx8xTMu
         rEvUUjWDip/iT6ZFLPNqMGSG3epoDzk0pQIj9LY7GW8BwwqwJdau/mOI3Hb+m6S0WM1w
         D/oGo2AyLRqEKgwBzmUrmHmzWvtEym3q/hBSibxf0Nc2dIqb2sLEBN51JW0wMXSPs7TR
         s5zLToZKMGtjjf6paw0wscVR6ATeaA7Hl6xDIur6vuazS3XPrLobyGtISxqsoC5K4tyv
         M5jmw3ZRht7hCXUcn1ZKC/GLpEVcFXBT17Nw/1Hk8qMpqZJATSXea/QPNX6AQzWTpIvb
         bbXA==
X-Forwarded-Encrypted: i=1; AJvYcCVScFHya1C+Lc5AjRTXxu6GnJKZ4u7+Y5FS7RggE57xlvF241btrfia1NnAKWpX3xbiRYKZzFwiMjI4LUPJFQtrZkn9PGHXMVIK
X-Gm-Message-State: AOJu0YyLewXqDqA9EQTXjH/GNc0B6tIk8HdcgSGWwALWxk7DmR/FIxoo
	jrLzQ6OZMng9mh8FJOtwPDHy0KiAtKp03ftpO/TDm+1aPQCIVFHJ
X-Google-Smtp-Source: AGHT+IFn05w26d25uXzTqMiABq5M7DFEG7FZHRlYMvF8w5ghNIILTZPTFdmN7Gh1f87nJaA/K9V1iQ==
X-Received: by 2002:a19:ae12:0:b0:52e:93da:f921 with SMTP id 2adb3069b0e04-52ea062d7a8mr5389405e87.19.1720336525665;
        Sun, 07 Jul 2024 00:15:25 -0700 (PDT)
Received: from 2a02-8388-e203-9700-eddb-fb4f-5189-911d.cable.dynamic.v6.surfer.at (2a02-8388-e203-9700-eddb-fb4f-5189-911d.cable.dynamic.v6.surfer.at. [2a02:8388:e203:9700:eddb:fb4f:5189:911d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a2519a4sm117775655e9.35.2024.07.07.00.15.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jul 2024 00:15:25 -0700 (PDT)
Message-ID: <9d7d7564c3861969d3bd73340c0002d5e8b89376.camel@gmail.com>
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
From: Martin Uecker <ma.uecker@gmail.com>
To: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org
Cc: gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
 linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com,
 lh_mouse@126.com,  jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com,
 sam@gentoo.org,  ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com,
 dmalcolm@redhat.com
Date: Sun, 07 Jul 2024 09:15:23 +0200
In-Reply-To: <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
References: <20240705130249.14116-2-alx@kernel.org>
	 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


Hi Alejandro,

if in caller it is known that endptr has access mode "write_only"
then it can conclude that the content of *endptr has access mode
"none", couldn't it?

You also need to discuss backwards compatibility.  Changing
the type of those functions can break valid programs.  You would
need to make a case that this is unlikely to affect any real
world program.

Martin

Am Sonntag, dem 07.07.2024 um 03:58 +0200 schrieb Alejandro Colomar:
> Hi,
>=20
> I've incorporated feedback, and here's a new revision, let's call it
> v0.2, of the draft for a WG14 paper.  I've attached the man(7) source,
> and the generated PDF.
>=20
> Cheers,
> Alex
>=20
>=20


