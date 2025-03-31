Return-Path: <linux-man+bounces-2715-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 146F8A768AF
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 16:52:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E8B6161DD8
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 14:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE40F2144BA;
	Mon, 31 Mar 2025 14:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=szeredi.hu header.i=@szeredi.hu header.b="fimggTkT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470E921C188
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 14:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743431873; cv=none; b=if6/fAF5cXh8sTujdXkLZ11d8fPFbYQUyvfqEtp4nrTMoa8Wpoofp55qx1PahnQ0CUvavwNhF4OHu5WwiVegrigCUbX9wBP9xKU/xtZo75TD98A3TBGMkqLTTYNxmbDW+C8VGrjPsQptGtR+OJmF66GWtgub8q2PNa8Cn7uxbYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743431873; c=relaxed/simple;
	bh=71ViRkEbimtS68hEM0zCoPE5dIe42SS6+H+37bl/+78=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cU6Y8SFEsJOhvhg69897AQhRfPTNTGcJ/C6cEvAsBKKCN/eiIvXIl5KrqTiTyOaKSaKndXOL6k+P0Ug8dW0HWb5EVjVs/FIDluV298zGtIGXHHBs5c0jGXgFqUVpvG4vSu3+SGY5pwJTrt9cg5Dj0W9LofH1LiJUPK5A/acQy08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=szeredi.hu; spf=pass smtp.mailfrom=szeredi.hu; dkim=pass (1024-bit key) header.d=szeredi.hu header.i=@szeredi.hu header.b=fimggTkT; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=szeredi.hu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=szeredi.hu
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-476b4c9faa2so60108991cf.3
        for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 07:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google; t=1743431869; x=1744036669; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CnXlPhrVT4wOniSOMU9J1q7+7W5L95cti0eD8SRQe8o=;
        b=fimggTkTWlhA6iBc4SA+aH9CJNoTCefyUgtTkfFMOzns+UEAkg4fPOj+2+p7OhOgvx
         p8iZuHm2pQt/BF/davaeJ+vw710AM54kI567Wqq2fz6ANMQyaTi92cUgICll94oyo2fH
         V5BSmz2JUuJkBWr88VL72GPE2LQTaOVzB90Hs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743431869; x=1744036669;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CnXlPhrVT4wOniSOMU9J1q7+7W5L95cti0eD8SRQe8o=;
        b=sh6sq5LjbCOP678VzyWXemiy6B4Xb8Y2AEK9KU3Tt7KVNcEXx4fTp/M+wRWWcN6OiA
         uYs9J5+gThDg1WxHrD1rHvM5ZCoS7vDiRCzvO4c/asTOlJSqf6bL9QASmTrk1CPX/SPt
         2DQETWz4bfidFw1yXX/9uu+30/qZmtOm/AnQQxJjP05QkrN96xs9Hj1SwUkUigBhN6NV
         mak+kei36DTiA7hvc+eQy2zTBp50O8mBLD4VqiBGuuoJQkxOZCDwJl3plvqvDD2pB1Dv
         j52WkTUF54Lw11+F8h0AHu8OYgpxfOPWpH2uB4eAST18/rjqcb1MLTdFAdfIAmm+FHHf
         O+EA==
X-Forwarded-Encrypted: i=1; AJvYcCXiKN4BZmQM+F0j7nlvfzHZPUlfUnPLZSvG4/C5Kmfb5k4RhZomt+XuQBXEAuL8ZZf14ofX/oQvxc0=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/6ociwXnzOK3cnYNWQrnPOKBcTYI6Wd00mR0eissW4vq7+suN
	DhCf8S51Bm+Y3ZZabVgboTN80jl4yr2qDph6d+RSXU/fEoCOaGpsf2vigAdqq06RUhOlb+CPwD5
	74RlwvjSnkNTr34VLkNvlcOjFye/WteuEJfwj0Q==
X-Gm-Gg: ASbGnctZoQ5HOmeoapp8YIr1vNFumDXGykZ1enlGQP62LdkdDMynVKTf1mjM+pAB1rR
	EfL+h2lDHEfxuj8sj+zJZYfXX9i8wPgalJGGwC89ZRUB2Vp8rl5seQZ8e74FJtsXYblLbcTCVi9
	WRYhUGn5lJghy5WGA2fawkkYWGwA==
X-Google-Smtp-Source: AGHT+IEkBtF6DxJsAOmt7pllervm4RbDQDU2pWRUVXX+g4joezBSh5bLHINtLSXf5x69ZDzR9B+6JxI/JcXzVbfuEj0=
X-Received: by 2002:a05:622a:19a0:b0:476:9483:feaf with SMTP id
 d75a77b69052e-477e4b4c5c1mr132914261cf.19.1743431869092; Mon, 31 Mar 2025
 07:37:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250331135101.1436770-1-amir73il@gmail.com>
In-Reply-To: <20250331135101.1436770-1-amir73il@gmail.com>
From: Miklos Szeredi <miklos@szeredi.hu>
Date: Mon, 31 Mar 2025 16:37:37 +0200
X-Gm-Features: AQ5f1JoWhv7XoIQP7RwdVOIOm9srcRdTPQrUwCzk_3sXQKJ2Xu1yQu--3bOWOyo
Message-ID: <CAJfpegsXBvQuJO29ESrED1CnccKSrcWrQw0Dk0XnuxoGOygwjQ@mail.gmail.com>
Subject: Re: [PATCH] fanotify: Document mount namespace events
To: Amir Goldstein <amir73il@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, Miklos Szeredi <mszeredi@redhat.com>, Jan Kara <jack@suse.cz>, 
	Christian Brauner <brauner@kernel.org>, linux-man@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 31 Mar 2025 at 15:51, Amir Goldstein <amir73il@gmail.com> wrote:

> @@ -99,6 +100,20 @@ If the filesystem object to be marked is not a directory, the error
>  .B ENOTDIR
>  shall be raised.
>  .TP
> +.BR FAN_MARK_MNTNS " (since Linux 6.14)"
> +.\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
> +Mark the mount namespace of the path specified by
> +.IR pathname .
> +If
> +.I pathname
> +is not itself a mount point,
> +the mount namespace of the mount containing
> +.I pathname
> +will be marked.

This was the original version, but it was changed to take an nsfs path
(/proc/$PID/ns/mnt) instead.

Looks good otherwise.  Thanks for working on this!

Miklos

