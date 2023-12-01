Return-Path: <linux-man+bounces-199-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED3A800AA0
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 13:16:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0CB2FB21126
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 12:16:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E79524B35;
	Fri,  1 Dec 2023 12:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Cq93vFvD"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3EA3170E
	for <linux-man@vger.kernel.org>; Fri,  1 Dec 2023 04:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1701433001;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=z6oyHf6F6gXhmHd198MeYmDWj4Dvk3yjqDPb5/NY6f8=;
	b=Cq93vFvDX4sah+MR3uUohzG4XSBPuh22H+ZO0vmDbCi4opF7UX/U/X6HCgvo224JQUnz2k
	RjCActEM+rBL9POrSKnoKXThJFVA+I2DRzJ7SS+XaEn4yeSZnOGTXbP7XFaLJssouWwmqN
	OuB2korlU8BIUnCY/PWEn/Zdb2ChlxI=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-549-iL8aZSj0OFW4ZY-ExFHm6Q-1; Fri, 01 Dec 2023 07:16:40 -0500
X-MC-Unique: iL8aZSj0OFW4ZY-ExFHm6Q-1
Received: by mail-ed1-f71.google.com with SMTP id 4fb4d7f45d1cf-54c6bdefc9cso67215a12.1
        for <linux-man@vger.kernel.org>; Fri, 01 Dec 2023 04:16:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701432999; x=1702037799;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z6oyHf6F6gXhmHd198MeYmDWj4Dvk3yjqDPb5/NY6f8=;
        b=PChzU3T/cPqgBq/1+8pgCbxhoNXVKPmkFWv0XF8yLcSU1R6d+cxnYfrR4IyzSG8GB7
         Jg8wuWNWHldjlhVo+Z6dv8veZVKq558ZdEZ2S0+YBtzwXRpKKpi8y83D3SiKD2CSHM+P
         ff4vEYeuUPRY5MNFJQQ8bCCDiTT2Azx5uzRB8XVUZhcSUdubn4B6PK6qGL4g/B1+OdFP
         XWNzQ8q9S14h3gsrx2TdYWfxewxSFfjYzLS+aFA+Y/bVOjG2llWCRUp8IUzUGH/ACDoG
         1Tzaf/VF8xsvRY4yLcIKvsledmzfc8nJFafL8OOLSm/K86wtLsyPtSGsIPA2ombCLASz
         Ad+Q==
X-Gm-Message-State: AOJu0YxXTvAvkVGsmfgrXAwT8NtKWzRJ1rSWjjfqLIXBZcYa36u+huSb
	VGqEk5FefLgv2vytU9+xQYqoaV2D2N49Et6hcMkU9e6iYDfgMwo4YBmmzRehlzUTgYGdtgigYRo
	GVYMe0J3K8VLaSDLOJWvOUZo9/ywqtvV06Rg9rpcSqm9fdtA=
X-Received: by 2002:a50:951d:0:b0:54c:4837:9fdc with SMTP id u29-20020a50951d000000b0054c48379fdcmr491799eda.51.1701432999016;
        Fri, 01 Dec 2023 04:16:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHvdI9TQZOnhc/wFUemuWNqCZ+FbgRBynjffFHTR/gHsMB6qpLodvFDryPusAT9MQQkzW0gxbzGIJZ9Jb8m1v4=
X-Received: by 2002:a50:951d:0:b0:54c:4837:9fdc with SMTP id
 u29-20020a50951d000000b0054c48379fdcmr491794eda.51.1701432998720; Fri, 01 Dec
 2023 04:16:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Alexey Tikhonov <atikhono@redhat.com>
Date: Fri, 1 Dec 2023 13:16:27 +0100
Message-ID: <CABPeg3a9L0142gmdZZ+0hoD+Q3Vgv0BQ21g8Z+gf2kznWouErA@mail.gmail.com>
Subject: UNIX(7)
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Content-Type: text/plain; charset="UTF-8"

Hello.

There is a discrepancy between the man page description of
'SO_PEERCRED' and real behavior.

`man 7 unix` states:
```
       SO_PEERCRED
              This read-only socket option returns the credentials of
              the peer process connected to this socket.  The returned
              credentials are those that were in effect at the time of
              the call to connect(2) or socketpair(2).
```

This doesn't match real behavior in following situation (just an example):
 - process starts with uid=0, gid=0
 - process creates UNIX socket, binds it, listens on it
 - process changes to uid=uid1, git=gid1 (using `setresuid()`, `setresgid()`)
 - another process connects to the listening socket and requests
peer's credentials using `getsockopt(... SOL_SOCKET, SO_PEERCRED ...)`

According to the man page: SO_PEERCRED should report (uid1, gid1),
because peer process was running under (uid1, gid1) "at the time of
the call to connect(2)"
In reality SO_PEERCRED reports (0, 0)
Reproducing code is available in
https://bugzilla.redhat.com/show_bug.cgi?id=2247682

I'm not entirely sure if this is a real bug or rather a  poor
description in the man page, but I tend to think that it's the latter.


