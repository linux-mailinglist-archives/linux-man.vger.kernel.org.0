Return-Path: <linux-man+bounces-2043-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A36EE9D1B2B
	for <lists+linux-man@lfdr.de>; Mon, 18 Nov 2024 23:39:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 391E3281D37
	for <lists+linux-man@lfdr.de>; Mon, 18 Nov 2024 22:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14BCB1E7C39;
	Mon, 18 Nov 2024 22:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y7XLEzw6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78146158DAC
	for <linux-man@vger.kernel.org>; Mon, 18 Nov 2024 22:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731969543; cv=none; b=FzyTqAy50z/pLySPlGyojoABJqh8WFE+7Zo5JbxD3erSblk1thGiVRwXtVuYl3O5LxvFeZTgq7dw0ohP737BYVbFvPomWb08cpKjVFPaaxOTM1jQAo2ae2zP20eL2oHkMDJ47WBRAjSgCgZbQ6YnsIdBFpz6IL6ETneQUzyshLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731969543; c=relaxed/simple;
	bh=mqk98GP19dZ+Ay7HEP68kLZER2bT/NkIqYTu8jMJ4BE=;
	h=From:Message-ID:To:Subject:Date:MIME-Version:Content-Type; b=KLdmJgzPPMlOdCNu4BrfnT0CbAX6Pr0m93RQDdyMZf8blTU2wlXnJTf4oAcDcWxepe0rGjwxf4/mU1kF7uXzeAZw2gNftQTaTnrQVwROLBRFtAzqC23SEok64S+/4QkGhO5lj8Gd6B4w/qB1jyWb23vw/4/J2NcbFIXj7/J0t/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y7XLEzw6; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-4315eac969aso27377035e9.1
        for <linux-man@vger.kernel.org>; Mon, 18 Nov 2024 14:39:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731969540; x=1732574340; darn=vger.kernel.org;
        h=mime-version:date:subject:to:reply-to:message-id:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mqk98GP19dZ+Ay7HEP68kLZER2bT/NkIqYTu8jMJ4BE=;
        b=Y7XLEzw6kvVJFBiJCv2Mq2FrMKNilTBGnsNsTWTf6fWHnNAUA/z9hUNVjeakLaXTPC
         i5fWsCfxoPA/JGNJBysz3wUoU4Y2dxhRWmVg3zr5IRyMldGlu+7nHj3PP7jUASlzxYR9
         Hk9izyjt6KHV9+KfWMgNpeAKCS6GRS1qvbvAuTaUCNqQ/bmbo5nG6McrclsctMAjjfiX
         0D14yiP2JWXAOcYQuox53H3mmMW2TlvB7hjnygSaGVxsV4r9i19GsX4xmTC8UZ9fMsbC
         bT3zgJyD0BHd2H98x7daKv8+yXcVzw7Pa4SDqTAeAf1X53vFVfD+5Wz+bcCKkAO6g43x
         Eisg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731969540; x=1732574340;
        h=mime-version:date:subject:to:reply-to:message-id:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mqk98GP19dZ+Ay7HEP68kLZER2bT/NkIqYTu8jMJ4BE=;
        b=tRZu/YD8/PMFL6hyHy106owbHDfGcDS+RykCCwLhB3zs4KXtbYtiAR5c3rQ/lBnQcS
         HNWQTqoWaNygmmq8L+Q6qSypARpk9gRf5rYOXJJ/GALSuxBHl0KTsmi1X6xoXnAoaSza
         r69WZj1eJsr6b4gKLVI61MCpi63obHsh8wiU93DHFfePhC1r202QmxupKbQkksg7k0wH
         eEN/v+xkVmjmt+4iuLVjcsqFuIJddUY/akq2eqtqKHJ9dlEzGzmn0dwHFFEEGp8KCGce
         0NnGGTty9nrb7iB8zXSl9/APsacxrku6ljj/U16SJ9xc7XwXpRH/xAkBWPv1KDnI2183
         WASQ==
X-Gm-Message-State: AOJu0Yw148sltULgrS+DhNNLA+MQ++oQFu3BNJQc+NDjMvr4Er9FbP/e
	WpqeGealEOVVWvLOSb+FvNJOQfqwhZbBOP6SL4Bf957eAqlimS4qFiqH+U3T
X-Google-Smtp-Source: AGHT+IGRDqq16SAQczKN+FzpZ5lBxYgVe3Y2faS5LmCRtXUmUS6djW0XcMVIdbrbHyrdEmuKeKx6vw==
X-Received: by 2002:a05:600c:1c16:b0:424:895c:b84b with SMTP id 5b1f17b1804b1-432f57b37b1mr7067405e9.4.1731969539662;
        Mon, 18 Nov 2024 14:38:59 -0800 (PST)
Received: from [87.120.84.56] ([87.120.84.56])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38230e88f57sm9703492f8f.94.2024.11.18.14.38.57
        for <linux-man@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Nov 2024 14:38:57 -0800 (PST)
From: William Cheung <muralidhoron73@gmail.com>
X-Google-Original-From: William Cheung <info@gmail.com>
Message-ID: <84d6221bfd50f16510d4e4dc9cfee23797bd0a79b560f2ee25fccf94ed51b832@mx.google.com>
Reply-To: willchg@hotmail.com
To: linux-man@vger.kernel.org
Subject: A Proposal
Date: Mon, 18 Nov 2024 14:38:45 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii

I have a lucratuve proposal for you, reply for more info.

