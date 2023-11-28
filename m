Return-Path: <linux-man+bounces-177-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DF67FBED5
	for <lists+linux-man@lfdr.de>; Tue, 28 Nov 2023 17:03:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FA3C28262F
	for <lists+linux-man@lfdr.de>; Tue, 28 Nov 2023 16:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C49451E4BB;
	Tue, 28 Nov 2023 16:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Jz/CCjpm"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02789D4B
	for <linux-man@vger.kernel.org>; Tue, 28 Nov 2023 08:03:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1701187426;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dP5KrxTVSniSY5EKn+1whInNpNpKvz47uFsYRNbSIfU=;
	b=Jz/CCjpmfIUXFUbhaAsAyMLB7Eubb+ynVjPFBJ1LxnBP4p1bGvxW2QoBg9cavFUmjRL1vS
	6Fys5bzCstn7tGzZwXUQ9OZiOX4bFKr6fsRtyQPOLwBLIYq7ryfVcQOOVrSYoTCt5EDLFx
	qw92DNkVQjzzITRtQHQ6mdDAM2H361U=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-494-owDSrbSuOJCflnRSZcpKAg-1; Tue, 28 Nov 2023 11:03:43 -0500
X-MC-Unique: owDSrbSuOJCflnRSZcpKAg-1
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-332e06036b5so4150253f8f.0
        for <linux-man@vger.kernel.org>; Tue, 28 Nov 2023 08:03:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701187422; x=1701792222;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dP5KrxTVSniSY5EKn+1whInNpNpKvz47uFsYRNbSIfU=;
        b=VQphjjtM3/1C7UmbSd2ZJkq8IqMeO9eHmpHKrBnydgQcnwoe5u5QiQJUIkXCLYjhL8
         IlBKK81oQq80TzuJTtaA/n1Ge9EzXf6ElGnoZSS6GAVKqpa+/tvEJvj1uH4blF7Jcu5E
         1Btzn7A9sW+h+LVtc/fbrML2/s0GD0gTPDo/BMOe+qbFOkIVkVi7MMsGTQqtDGxwcExW
         7kNVFbBxQ87RjblM4FJkO3E9IecLZTqIcLMDDDNDLrW80tV8758jgClbOQMkxXU2GRTA
         wZHOybyM/FoklF/4NTdQl6dAVyGrn9t5BJoK/tJE/JHHJYesI6bWgMoAOwIgLcLi2GhE
         Nw3Q==
X-Gm-Message-State: AOJu0YwEh2kg8xYNxgzPXiysP4trbT0B2mqSJaImlW16mFEuCZcgfmyt
	hLss3k1tngCeCWXFNXB6VL5iRJeulh/nH6QERXeup264TLAC8p91zv7ofeWhWaeiGZhDh2dPOdy
	HZryCW31j+wn2RmFB41u1
X-Received: by 2002:adf:fdd2:0:b0:333:f42:da7c with SMTP id i18-20020adffdd2000000b003330f42da7cmr1411015wrs.12.1701187422426;
        Tue, 28 Nov 2023 08:03:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFF0/vjcHQJgRjLn+YMRrmRzcBT/v6nI4n+3fYoa/+cVZ0kQZ66HeAXSc5ies1QQ/IS6vrEMA==
X-Received: by 2002:adf:fdd2:0:b0:333:f42:da7c with SMTP id i18-20020adffdd2000000b003330f42da7cmr1410984wrs.12.1701187422121;
        Tue, 28 Nov 2023 08:03:42 -0800 (PST)
Received: from maszat.piliscsaba.szeredi.hu (89-148-117-163.pool.digikabel.hu. [89.148.117.163])
        by smtp.gmail.com with ESMTPSA id w27-20020adf8bdb000000b00332e5624a31sm14745352wra.84.2023.11.28.08.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 08:03:40 -0800 (PST)
From: Miklos Szeredi <mszeredi@redhat.com>
To: Christian Brauner <christian@brauner.io>
Cc: linux-api@vger.kernel.org,
	linux-man@vger.kernel.org,
	linux-security-module@vger.kernel.org,
	Karel Zak <kzak@redhat.com>,
	linux-fsdevel@vger.kernel.org,
	Ian Kent <raven@themaw.net>,
	David Howells <dhowells@redhat.com>,
	Al Viro <viro@zeniv.linux.org.uk>
Subject: [PATCH 0/4] listmount changes
Date: Tue, 28 Nov 2023 17:03:31 +0100
Message-ID: <20231128160337.29094-1-mszeredi@redhat.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This came out from me thinking about the best libc API.  It contains a few
changes that simplify and (I think) improve the interface. 

Tree:

  git://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git#vfs.mount
  commit 229dc17d71b0 ("listmount: guard against speculation")

Miklos Szeredi (4):
  listmount: rip out flags
  listmount: list mounts in ID order
  listmount: small changes in semantics
  listmount: allow continuing

 fs/namespace.c             | 93 +++++++++++++++-----------------------
 include/uapi/linux/mount.h | 13 ++++--
 2 files changed, 45 insertions(+), 61 deletions(-)

-- 
2.41.0


