Return-Path: <linux-man+bounces-4115-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8229FBD1873
	for <lists+linux-man@lfdr.de>; Mon, 13 Oct 2025 07:52:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E6A1C4E909F
	for <lists+linux-man@lfdr.de>; Mon, 13 Oct 2025 05:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E520F1E3DDB;
	Mon, 13 Oct 2025 05:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jukFvp8l"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA422DCF74
	for <linux-man@vger.kernel.org>; Mon, 13 Oct 2025 05:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760334740; cv=none; b=ZPFEl+bZptrm7h1Mp8DLnj+K7057w20RszHPSJ2r6gW9FmnOhqQVQk84TCkCJD/sxOGx69I3FpFlHSSrvhVuwRPEPCte2HibMi4E8BhfAG8vmxar1PQAuu6wR3QZ6nqRBUK5A8MQ15RyuHOzF5FjqyUsvuaj/suJOOeBhR+hTl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760334740; c=relaxed/simple;
	bh=yhgJl9Du+YoMRbJlrYs4AzxXSfm5xVjGt7nVRt8hQrw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=umzXoD8jFKRSSAoGfKxm/BIfsakP1qS+Y2OT7JhpAxEw6cmI/Oz6nMpvUaF3oXFU3gZP6unt9cNglm0nWiJF+Hs31Ue5Gl41hfFuXM0GL2JmtbW7VwEyFAZPu/NbkzEI5bpeGt9CedGi74whN5HvqNK6bwHc5nzC+pkCmflL4lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jukFvp8l; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-780fe76f457so31216457b3.0
        for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 22:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760334738; x=1760939538; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yhgJl9Du+YoMRbJlrYs4AzxXSfm5xVjGt7nVRt8hQrw=;
        b=jukFvp8l78iFsihn3aBG/5rMFnFoAPFJoJvRtWvU7I1x3T8fO3hpiSmuyZ5r8zQIGr
         9ocUvIQZg0h+xgawHv3ltOurCesKqO60ULAEbT83FWUj2csJR/egFmQDLSHGPAjyoJO1
         w581uLhu5l20aJn6rHddaXuK1k+Ko3gjxhylGuH/7+YKyqMrv8EpViAIfpUC7WmmFCJ0
         xFyWeN9YKAEgNlX7M4KWPDCrgrfrD2agex03XdrOLspWVRw99K1VesztB0NVZaLWDbKk
         Xow7CBG4tTB1A/WQctju/h2XWlsVAM2GFeroObAK0yUiX2VAaBvbXmpblHNiKYpIiqFC
         s0Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760334738; x=1760939538;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yhgJl9Du+YoMRbJlrYs4AzxXSfm5xVjGt7nVRt8hQrw=;
        b=ua6m73qONkSnZRfboDNopnkcMZ0iG+Z3uS5JP/nRD65O1l31yGQ0V3CeHe1GlrExyN
         +lZRMkO10HY+pUdHd+cKD9RGqDDoSyyhoOwNJ06WimsoxT2LB5DKBMv4LpGnRpCc1EUp
         k+nOLYX5JDcTPRnv3IFqd17MkJRNxhtvk+uN2QpeWHv2rM4l9OLy9sQTvJ7ZEdK3QvKq
         Z+toJiv8Aoed2itiSAVM9YkOp9+nZC/Hr+NsH6hbfWM+k0pxnISyJt2EodMaoRJS714Q
         oH87gKD2mUr4rbjeFjail1gLkc/flWc/afpfCRLLSGC7nvattpRc6JwMS1VKv3og4rtz
         KEfw==
X-Forwarded-Encrypted: i=1; AJvYcCVCfYIanHA5mzG8hbhhiDrpITc24MPIByGqAY+kcTFXEQNt/28J8upDPzB6UdNoveFMWHM6jjkG9KE=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5+RLKy7ufdjrFmhHpmj0Eo/dKxXRULbVgZFZpqpjTn3+YQvI5
	d1AXvdrKW+WeQO6zE6VX8L8T52jbHclv1eko6BMaxvf/a7mejLUa94LMvjzmYZ6UgZng/XE42lW
	gd9i1hidUu9IwkQHyuRUovFK23dJJ3MaK9M50
X-Gm-Gg: ASbGncsR1Y1fIJH8vgJ0tU2HUAhLani087Eqj3o7T7IHFpW2ai5qJRKE4L8qY8myRbR
	hOeEtYp9u8i1SyhUY68bIoM0bYDwDnZudswScNVAmzYIdyLGu0I4my7JEwrgiRPQFrzQ8yNnzSi
	ceC3NTyLyeHfnm1iiq/EV/F5na4tSNOz6WxVA63/+qUzmiIyxQk/umt5+WM95YChw/ak958pNX+
	/b5/4VvHP0Lfwlv3lw3S7dC+A==
X-Google-Smtp-Source: AGHT+IEGY6fK0SI2o5MxFnMjtVFnwQxdBDRR1/yH8JkiHdWKzjgaFPVAcGr30+j3qCOCxUWnYLmbnjaWEMYOjfl2QTQ=
X-Received: by 2002:a05:690c:6002:b0:781:64f:2b15 with SMTP id
 00721157ae682-781064f38e1mr197514497b3.55.1760334738154; Sun, 12 Oct 2025
 22:52:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAMw=ZnSBMpQsuTu9Gv7T3JhrBQMgJQxhR7OP9H_cuF=St=SeMg@mail.gmail.com>
 <20251012125819.136942-1-safinaskar@gmail.com> <wk3t24r7dr5kdgb5uy4hz2ahwsd5vkkuwjch3y7kwwybemlmg4@lb2ewcanzf3m>
In-Reply-To: <wk3t24r7dr5kdgb5uy4hz2ahwsd5vkkuwjch3y7kwwybemlmg4@lb2ewcanzf3m>
From: Askar Safin <safinaskar@gmail.com>
Date: Mon, 13 Oct 2025 08:51:42 +0300
X-Gm-Features: AS18NWCHN-JNvD8JDjaa-lSYG8dCJPc3191CDDTIzSiTAJVlu6Of31P8KY1ZDRU
Message-ID: <CAPnZJGBZiY4bqcqgKQzH9ZVuRrnahe89YdSy0ShJTiNf2ot5jA@mail.gmail.com>
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple instances
To: Alejandro Colomar <alx@kernel.org>
Cc: luca.boccassi@gmail.com, brauner@kernel.org, cyphar@cyphar.com, 
	linux-fsdevel@vger.kernel.org, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 12, 2025 at 4:17=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
> Maybe under a CAVEATS section?

Yes, good idea.
--=20
Askar Safin

