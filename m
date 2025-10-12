Return-Path: <linux-man+bounces-4101-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47579BCFFBB
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 08:14:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 081A83BB8D7
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 06:14:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1F3421254D;
	Sun, 12 Oct 2025 06:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bN62wl3G"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8F178F51
	for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 06:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760249687; cv=none; b=BvqpcicpSogybUaFoyv2yVKn0zpK1TVjXWNArjdxmWTdvBnMIBFPyJvHM1dhS/+6RNC2uWdyr9CIiPCzMoKyHWonRMYBWRxTATePPs5I4+9MkdnxtEvu52Y0r1tyRn00anK95POfB7DaoBSgpsssrGwwoZKE8x29uF9/xkxZFpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760249687; c=relaxed/simple;
	bh=m+lgtySiSGGIWnsA66jgFuFum5hqvBvd8+jR6T+AGQU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gtHcnMYDgLnaXw5XIuY+v6y3nNpK//aK0sxRXc5qtZzJsZrYmkA2wNx4bGpxcWLRelPZ7w9d9gIxnYnY7bbb0hMi2fOVXqgo38NSuIOF56sC/iyh/QT/1I+DTOWU06IifOBpkXjgrU9OmHSk/BZbi9fXDXeqepCQJoF+5iNQrCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bN62wl3G; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-46e42deffa8so29674355e9.0
        for <linux-man@vger.kernel.org>; Sat, 11 Oct 2025 23:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760249684; x=1760854484; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SAOrmio62U43guzG2eDGA1f1tCPBMTpqSZuJ65iOtN0=;
        b=bN62wl3G9aJ4cFHvjdsCNuclz95UkSZ4tiJSzpbcPlQrY65LK+hJH408KNswZhby+L
         ZVaPiVytDIY/hmS3y/GE2HoN+ECiF5+nnPfFTythRhAnYlCJrmP1+0QzVonYBxyvaXqx
         rkh0rPBV6zkZZ5odUz1g8Wz/BQl/b9l+nUOe7SZd1Xk3eWj7xcmfcEYwQXyoVj4mY/1Y
         MgcZoCa9XF3s3Wup0eBbz6gAEatekzQzzblZKI6jD9PE/Blrh2Cs+xvnpMBdoYJUPVVS
         9IGEviITEmyzZD0Gbt6KlK7YIkE24TKm7DQSDE9DQ+C1FdlugFWaVLYP+TvEjnu4SmtF
         sRfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760249684; x=1760854484;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SAOrmio62U43guzG2eDGA1f1tCPBMTpqSZuJ65iOtN0=;
        b=GVIZd+XqE3AASc/BevB/wk6WH6hCSAwAmV9AI2YBgn5mxiPPqufTh++u2OTiiPHIq9
         VHRo344nC3AA7JI+bALz9KybQ44Xey8AUow8cxt64gy9lcw35qo0aEWY7gGrGmn4SAvC
         FdYfhVpFWmYatfAbzU7bGNtg520MEK9ZPo5r5czUAeaFJA5iU3ujkKZTbAPEgRfnwGji
         AhYf+LGQnif96xsaIwrqG9RaX72r4uFEXlt+LO3cH6GSuQY7utj8etoCy36b2Ktot74g
         qJoZEc7MqXIlibv3vrgEWwULT0f9OwpbihFV7ztfqzhskFYAMAkuMv9DmpzYY8V50Lxb
         8n7A==
X-Forwarded-Encrypted: i=1; AJvYcCVbh8YxioL7KzrlRPgJsin3iEZrdvYZCioOSoJMTVP8oUszZAqDGyDj9f+qWooaJve1n5g5gXo6rhw=@vger.kernel.org
X-Gm-Message-State: AOJu0YyGaG4aqRUEj16Qd5wAM2ga5SZ83M4iYUehjWhDY+ako3frtQB9
	dmUH631jFvxk4DdWEgVlbp1NHYBfkQohXn1FOMLyrQBsp9to9f75CUq5
X-Gm-Gg: ASbGncv8jRti4381GL/6QmCkIRoYnsqWwIC95YmOoRS9ElfdvoPX2ts/N3DkHosuDaw
	TaAdxfFmpJ3yRb33w4OotanFvMjk2BqtFg1+kUAiDCQQ7W3bRPZBCvYYxQMOB4lv5DevvoUAiG7
	q9pD7e46K4F5fKIc8oHijNT4BkC8beK1OdKgSR6sJzU56vtnSafYnXoCwIrhsKbrv2uW4ozdYuL
	lIMpOl+SZ5kcKM8ReJqJrWQcUtPZ1bQmCMXzCTp2041oIrkEQX78jQh+1zvA0qLKu8/5HZHtbnz
	j40XG1ZUrvGjZVECNtiUEecPSZRAnXz+cEipSUpXS4hiAG2u0zgTKUShZamgheQAkJhNIB1NavR
	Ets+NYVUICIYgN5tcU1GdBMQzBHMvFng2YQrPGA==
X-Google-Smtp-Source: AGHT+IE4rB4xnTmT6He562ThuiVG/pfm4Q/z2xiP28/GWf3Dt1Xuf0+3s0e0VYHIyISay5XLqOIEJg==
X-Received: by 2002:a05:600c:8b5b:b0:46c:d6ed:2311 with SMTP id 5b1f17b1804b1-46fa9af2f4dmr116769955e9.19.1760249684140;
        Sat, 11 Oct 2025 23:14:44 -0700 (PDT)
Received: from localhost ([212.73.77.104])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-426ce583424sm11699282f8f.21.2025.10.11.23.14.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Oct 2025 23:14:43 -0700 (PDT)
From: Askar Safin <safinaskar@gmail.com>
To: luca.boccassi@gmail.com
Cc: alx@kernel.org,
	brauner@kernel.org,
	cyphar@cyphar.com,
	linux-fsdevel@vger.kernel.org,
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple instances
Date: Sun, 12 Oct 2025 09:14:38 +0300
Message-ID: <20251012061438.283584-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <CAMw=ZnQki4YR24CfYJMAEWEAQ63yYer-YzSAeH+xFA-fNth-XQ@mail.gmail.com>
References: <CAMw=ZnQki4YR24CfYJMAEWEAQ63yYer-YzSAeH+xFA-fNth-XQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Luca Boccassi <luca.boccassi@gmail.com>:
> Almost - the use case is that I prep an image as a detached mount, and
> then I want to apply it multiple times, without having to reopen it
> again and again. If I just do 'move_mount()' multiple times, the
> second one returns EINVAL. From 6.15, I can do open_tree with
> OPEN_TREE_CLONE before applying with move_mount, and everything works.

This sounds like a bug. Please, give all reproduction steps. Both for
EINVAL and for non-working open_tree before 6.15. I want to reproduce it.

-- 
Askar Safin

