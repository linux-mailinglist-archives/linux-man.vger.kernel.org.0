Return-Path: <linux-man+bounces-1865-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B67AD9BC144
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 00:08:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76BB41F22822
	for <lists+linux-man@lfdr.de>; Mon,  4 Nov 2024 23:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EFDE1B3953;
	Mon,  4 Nov 2024 23:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XalrSwkm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A92811E5725
	for <linux-man@vger.kernel.org>; Mon,  4 Nov 2024 23:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730761690; cv=none; b=A5dGmGsWFUylN0F8p9lnmEHtIkKCezCLswo57onB25qEik6ohc/2E6O6DkYArNmeMh0vLdbsPYjLdOs5yQqI2J2oReXcr0t/4NtRqnK8MAubhLdgRW4JsyJ266I8+6E01CmntZYolyNsMnhhCOPsHvmRLymwWwRTuGpR2GAaZ/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730761690; c=relaxed/simple;
	bh=N8II08XOVTTCBVmkijvgICPFLVzrgabfSH81oimhyPQ=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=dRrjRKwdaK4ZrpnAfSGJtAZ6+jRiVJYbfhyvLKXTK1LYMlSX/uPyAbIZ3qOkDp5y6nGt7mjIJEJZZJFa/07wRb9F6uForsJnQEdXecDnhJDzk3SLQinvzIbQoKUvKT8MgfNEYw/B/fTR8wkkPCZV2MJuwci9SIRFBPMT+1mfVuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XalrSwkm; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5ebc1af8f10so2133785eaf.2
        for <linux-man@vger.kernel.org>; Mon, 04 Nov 2024 15:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730761687; x=1731366487; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=N8II08XOVTTCBVmkijvgICPFLVzrgabfSH81oimhyPQ=;
        b=XalrSwkmNN70BVmfLe9m+CO4MgwCWbVMoYwFQ4IhfwsjhrO0ocyULrEHyBO4t1nGW0
         6+Fj2UyoyDVUw4FOgRolMF816DkPjIRPzii2ce8LdVcDHd+TndsBs65/qEN8jhYoekTH
         UvK/33tH/Vy2eZEa1Q8PMV/NmqG9gZRkFkHsMZbFMzVeRBX0dgjtsXxyNSIRQnMXR492
         GTUV9upLRzMTL392KuGypfK37ExbWZeOaW1gb81TDBiAL3KHgWrLGWUlUdiV4loMraUO
         QrjruIdbIclQ0LtjdqZqY6RXz0jtlcmEzS9IzUW2zDeaafU/40K8TB5fdbh8n8GoXSmg
         G11Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730761687; x=1731366487;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N8II08XOVTTCBVmkijvgICPFLVzrgabfSH81oimhyPQ=;
        b=CAQJiKsO60PTQFtz80tPpKDu3Um7mhX+eDzurUCF7vkmpD0OQNpFatsVkFdlGL2eCk
         V5WFWIkGHS+yAHqSIc87nOg/cg90MilWu5Z6mFGUQL6rcpgmXAZFZYf/0l7PGvTkxv1W
         R+7+8ph5idX5lBTnpr6Z+1U4UO3ju5OJjrmm6DOkncPr6iC1o1OlIEtS5djMqKP2XNSj
         eL29G8WsCex4GXkE5OawREvOQcpCgkXtlvV+1bHIPW7LnIWZEYowor74B+5+hPdKQmsW
         DEtHPOhjtzy3JM99p2reQeJQ8LUm7KEXzilPNBgahX7aXzMHnujRy3WX4onnlxjC8fdi
         l3ig==
X-Gm-Message-State: AOJu0YzeppproXnVa+R81ENqrFfy8Gz1wV4XGwtEOumg2D8CNIYfAALv
	mlicAwtMKUQxAZEo/3Wii1dIgeiKVw8LAbuQvk7ql0TOqB/z0SGmhTjSzUWD4DrPZI/2zLdRJ/W
	5You+IJpyBL9d8CwSzuMKXAKVn27vaoQC
X-Google-Smtp-Source: AGHT+IHkkTVRKHZKGgMHTl3HNyaw3hItrDNXVcnlbmbqiMxFe20yP9AEy1dFR9yS4h4TxaB3WT6fe74Z3KW/D/dkrfI=
X-Received: by 2002:a05:6359:7603:b0:1c3:7503:86cd with SMTP id
 e5c5f4694b2df-1c5f98c8858mr672538855d.1.1730761687352; Mon, 04 Nov 2024
 15:08:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Jona Christopher Sahnwaldt <jcsahnwaldt@gmail.com>
Date: Tue, 5 Nov 2024 00:07:56 +0100
Message-ID: <CAEQewprcZmJBcMcbnoxX_5TqOibKMByC71TQymecRVpnMtJCrQ@mail.gmail.com>
Subject: Typo in man3/pthread_cancel.3
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

"cancelation requested" should be "cancelation request"

https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man/man3/pthread_cancel.3#n60

(I hope it's OK that I'm not sending a patch, but since it's just two
characters...)

