Return-Path: <linux-man+bounces-4106-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BAFBD0280
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 14:58:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C519018912AA
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 12:58:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 246FB274B2B;
	Sun, 12 Oct 2025 12:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gQifUAt/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAE122156A
	for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 12:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760273907; cv=none; b=olcmwLZGYPDVb6tT+YjHrBvWl6dCRj03Q+sUidxdi4KbGi6bas/W5W6Y9oCURWPQbTJ0jdZIr4sYmrzQy8vYf8qZIg605ho/POD+1Y0OysVqBJamf2RESWeNAs4wdIXLzm9z21wBDJDZgBfzmVdUuPs8uSYbJFG+GP+meUYkzsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760273907; c=relaxed/simple;
	bh=HJUsRYd6byPJ5JCx+QOBQLqRAZXMxCnfFAD/5vxEaxQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iF5BpGqSj7Y6C1yLD6HsGsIKHCAjGcr4mjZbZZvvDor6UKpwTR87TMSZoL0AOoUFpu8BVyMn8iTtTqA22wTs5kxtO1QkaJXrccRam4PO/kqoZnmmrsqOTNf8MhyAP9GiJ/ChkZDXD3HK4ZRyWp0rCNmIokujmnb7AD5SYhl7Rfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gQifUAt/; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-46e2c3b6d4cso24379325e9.3
        for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 05:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760273904; x=1760878704; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=saUJmKeUe9g6yjctUBmXLyb1rnIzl0yI2Ve//8GWNcQ=;
        b=gQifUAt/GshznjdGRIs9dgF88IW02n0AJZDMD7Pxxsks60YJrYchHW2809bZcpkUOn
         ojuvYwhgPF9LjA/q81iNtlkspsH/uhFBfhP4Y1oUFrHiKXlMndvPlqfjHvxAHgDz+tGt
         2veikzItjE0wATGGbkU7FaD8MNXGt2gI1DCfBRNL1clXchYMCkHggu5OM1bRMNJxKuYf
         VUNeaCgqL/eYEHCndDgN+oVcyrpZZN82mYzQvfbKZB3MrwW2pnMnmBjS6oFK9LMI7myR
         46G57D5MuzzI8xiPkxpW65rfIzrpQx4K44uijA2en/DoYi8EC9BJJrK8aUEjit9IsZ24
         XrbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760273904; x=1760878704;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=saUJmKeUe9g6yjctUBmXLyb1rnIzl0yI2Ve//8GWNcQ=;
        b=cI2aDpH81ER3u3hByhdja54oRCDp4Fb9ACVEFNJ3zLwKTiXx7UrfmzjkEymYFitFDd
         uWxEd8hvxGzjsu03aqUGckFa3sYcYpMQLS6EO8UFgnenzcI9qlSL8XFT4hkwnUkp4FiS
         kQQ7u1KuWCvEVq8nY1YHyTNhljDTo+1jS1WTptWOnWVXR2HjHa6dsT3lNv22HfOqGh4z
         +7XdEZGySWOF/w2pABSLGv96M4HCn+tBSUBntnbAabSe+nrRJgszXI0EGPhnIbi8lyXd
         hOUnv0Roz/kCJfcC8pGDaNBlJ/2vCeLEAyTOpCz1VTapzfSB11eGvNcIvJfSCSzyvP9Q
         pXNw==
X-Forwarded-Encrypted: i=1; AJvYcCU/u6opK++5oFaiit09MCLb9lEN0+4ELWhEDgMeYwyJJMQuEufyDT826KvEAOLDwuKR1kePTiSsAAg=@vger.kernel.org
X-Gm-Message-State: AOJu0YwLq/u9qfryhpeRcTkbA7a9Nayn3JVNU/VEjaLjky0bde9wxn8j
	jBq1ib9S/Gs3ipBXAl7laCNNr4dKf1MEeKSBjXMhdr0hoqhL9N6H8mZs
X-Gm-Gg: ASbGncsb+1wRMcBz2XRLt3ixvTYDSV9ePXmd8gE/uM1KoysxKatfcNyzRPWBZCMabiX
	XnMnUvneRNIbAyJfLssfdQJzYBtvLlpBHO3uIej7zndtq+LtIw8WnWa3hokPkTrJ+DPIVpfF4vs
	8sFyBlPsCojx276Lsou0rgYApdKftLMrARZb6vSF4MGtM9IBosF7rQipn5eTKLuvJUmPUzVgQYk
	kmfP3XrR5akobhixQCAsBE0rGKXN9LSDD60ye9PZV5M6cAYsiTarun8fxbds/2J2VmBrKpOex4p
	WxMGsvDhzRgfTSfIf3cOUdVQ4g0tfazCrjNfjIMfpnUiXqcBQp/+XARpKHRYZHfQt0Lis2Hlmz8
	L7pg1S1RSCioj7Awx/aE7U8ud5jV7UnIcWmKmW1eguedHbTm0
X-Google-Smtp-Source: AGHT+IEORxGzKaedOUB6UF57omaElrmwrhui+CpRd/QxkKj/xLOetTmnd4XvsRcpSqiUz75i3Gz+4A==
X-Received: by 2002:a05:600c:1384:b0:46e:45f7:34f3 with SMTP id 5b1f17b1804b1-46fa9a863cfmr115375715e9.8.1760273904144;
        Sun, 12 Oct 2025 05:58:24 -0700 (PDT)
Received: from localhost ([212.73.77.104])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-46fb4982b30sm134815895e9.6.2025.10.12.05.58.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Oct 2025 05:58:23 -0700 (PDT)
From: Askar Safin <safinaskar@gmail.com>
To: luca.boccassi@gmail.com
Cc: alx@kernel.org,
	brauner@kernel.org,
	cyphar@cyphar.com,
	linux-fsdevel@vger.kernel.org,
	linux-man@vger.kernel.org,
	safinaskar@gmail.com
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple instances
Date: Sun, 12 Oct 2025 15:58:02 +0300
Message-ID: <20251012125819.136942-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <CAMw=ZnSBMpQsuTu9Gv7T3JhrBQMgJQxhR7OP9H_cuF=St=SeMg@mail.gmail.com>
References: <CAMw=ZnSBMpQsuTu9Gv7T3JhrBQMgJQxhR7OP9H_cuF=St=SeMg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Okay, I spent some more time researching this.

By default move_mount should work in your case.

But if we try to move mount, residing under shared mount, then move_mount
will not work. This is documented here:

https://elixir.bootlin.com/linux/v6.17/source/Documentation/filesystems/sharedsubtree.rst#L497

"/" is shared by default if we booted using systemd. This is why
you observing EINVAL.

I just found that this is already documented in move_mount(2):

    EINVAL The  source  mount  object's  parent  mount  has  shared  mount propagation, and thus cannot be moved (as described in mount_name‐
    spaces(7)).

So everything is working as intended, and no changes to manual pages are
needed.

On the other hand, this is a good idea to add a bigger warning to
move_mount(2) (and to mount(2), it is affected, too). I. e. to add something
like this to main text of move_mount (as opposed to "ERRORS"):
"Note that systemd makes "/" shared by default. Moving mounts residing
under shared mounts is prohibited, so attempting to move attached
mount using move_mount likely will not work".

(I personally don't have plans to submit this as a patch.)

-- 
Askar Safin

