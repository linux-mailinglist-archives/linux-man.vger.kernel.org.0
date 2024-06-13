Return-Path: <linux-man+bounces-1169-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3BF9064E6
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 09:24:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D68D8285772
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 07:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EE9957CB9;
	Thu, 13 Jun 2024 07:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YlAc0Q80"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEBD37BAE5
	for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 07:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718263362; cv=none; b=WsWat64u93KuIvG2g8DkNYVf5TitR1NtqlDboNzT/P2155iug8b8R6fqYdBNKGg4rlE3+lmf6ZbjV+x9Cjm9UvqUp4GBgQM789UArwUvI0vqBGzSld+sYGzGn8H2BUmrYs9x6knLSPz0X1yr5CCmztadw9TRi7nvaClI8GnpaDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718263362; c=relaxed/simple;
	bh=2zALT+hHISwg4DTD/NebRvZQJMMjeqp1Jaqk82TeoHw=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To; b=qvuF+kNLLDgogISgYDvIwK4D9IvNCdkxYra4/4ZJ4Wyf3d5jLdGtIxzkx0dkIP3mPXsyH9pm1pHb4iJz6EYaDVOul7niNVtsvmDuQUzoQtwK59xE2zDiQyn/4n7wKNCS88r6XeKin+Qdg1m5vQCrkZ2dixrSw/7aCJt/42wTeNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YlAc0Q80; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52bc121fb1eso981135e87.1
        for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 00:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718263359; x=1718868159; darn=vger.kernel.org;
        h=to:from:subject:cc:message-id:date:content-transfer-encoding
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2zALT+hHISwg4DTD/NebRvZQJMMjeqp1Jaqk82TeoHw=;
        b=YlAc0Q807nI61c6rpOsmpM7/9gB/IxVHOgoZo7Wi5eh0e89pPs4vkmn9bABwtbjTcs
         925uMFyqS2DVA4EQchfUY47/mpv7qZ2wsmwZKbpKvxErD8/GHaBmdu/RUNZw4R6p7gq6
         Z5DbDYezf4qN27bJ5Kxbp2IzFhozPsJzTifzk5+e+iXiCDjYlHq5B1Bo8hMOwrqDwjyR
         zB+K0/zXSYUGFsfjhb93i9DfJhOZZYvGvzRDZE6MIID0p4RVkyQO6GEDvzkNSe4IlR0l
         LDW782HZ70CJPgqsyDmZc69oMIutRaNOalUKPuBSBn3WLgiG/HYiWLupfWWv2huZL4Ch
         wo0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718263359; x=1718868159;
        h=to:from:subject:cc:message-id:date:content-transfer-encoding
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2zALT+hHISwg4DTD/NebRvZQJMMjeqp1Jaqk82TeoHw=;
        b=HZyoyMTOZA5qnilEJxtvpvdlwMD/Jxf1k8ctDLAJ6JJmH4izkNLEA9T6NU+rwcnfFc
         ElsnCZDlLZTqq5mhhFW1jxL0Y9WTbR8iwXJk/j/S7TIVskWkwcARSi1Y4VOIr9hS/8aU
         ZPf6a3BhZpj7v5P0s6aa4J3KNZk3NnCTzYuT6rpreOn4ulwwUYdwDRjPITJmIdGm7YVa
         AtLRedwf8ofIgpLTfKni1fcO03SfJVhuE1mRzO8TdycxefQRtYl9liYLbwCGMxp/hYFV
         J7hyeo+sn0TTBkhV/K+P2xW0FBdjZurqjA4B1nrA/WIh/uIYmnOU8x8QGqftQnmG87Xt
         SiJA==
X-Gm-Message-State: AOJu0YxJJ4ucVcccxL4yuJzmI9OxtYpx+X0UFIYdKXT6mXGpj8GNFaFa
	WmUma9227kbl2LByyrgoWatwAKEQ/QDQwuWd1sbspOJQ2duwG0/QPVdMIti9
X-Google-Smtp-Source: AGHT+IFaVLX4+AeCi8Kd1HZjuIxZf1BXByeNg2YjYvF/h+WL7FAJCp3an2UeQxtwCgqvmuRgzWdpkg==
X-Received: by 2002:a05:6512:1395:b0:52c:48e:4ab with SMTP id 2adb3069b0e04-52c9a3dddb5mr3202445e87.30.1718263358469;
        Thu, 13 Jun 2024 00:22:38 -0700 (PDT)
Received: from localhost ([5.62.142.8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-360750ad0b7sm829648f8f.53.2024.06.13.00.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 00:22:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 13 Jun 2024 10:22:30 +0300
Message-Id: <D1YPIU3QWBL7.3VGQ7D2ZI5ADF@gmail.com>
Cc: <linux-man@vger.kernel.org>
Subject: No mention of XSI in unistd.h.0p
From: "Jumps Are Op" <jumpsareop@gmail.com>
To: "Alejandro Colomar" <alx@kernel.org>
X-Mailer: aerc 0.17.0

Hi everyone.

I noticed that `<unistd.h>` doesn't define `sync`, `crypt`, and some other
functions. Looked into the man page `unistd.h.0p` and sees nothing about
XSI in the function declarations.

Looked at the website, you can see the clear XSI refrences here^[1].

Needed to define `_XOPEN_SOURCE` to make them work.

This information should be avaliable to the man-page reader.
But it was not included by the automatic manual generation.

The XSI requirement information was in the format (raw HTML):

<sup>[<a href=3D"javascript:open_code('XSI')">XSI</a>]</sup>
<img src=3D"../images/opt-start.gif" alt=3D"[Option Start]" border=3D"0">
...functions that needs XSI extenion support goes here...
<img src=3D"../images/opt-end.gif" alt=3D"[Option End]" border=3D"0">

Note that this can include more than one function at a time.

The guys at IEEE suck designing anything.

- [1] https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/unistd.h.ht=
ml#tag_13_77_03_06

