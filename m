Return-Path: <linux-man+bounces-349-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A677782A53D
	for <lists+linux-man@lfdr.de>; Thu, 11 Jan 2024 01:33:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D86B1F26850
	for <lists+linux-man@lfdr.de>; Thu, 11 Jan 2024 00:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85B4D642;
	Thu, 11 Jan 2024 00:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="M/CaZ57Q"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A500D36A
	for <linux-man@vger.kernel.org>; Thu, 11 Jan 2024 00:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-50eaaf2c7deso5172088e87.2
        for <linux-man@vger.kernel.org>; Wed, 10 Jan 2024 16:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1704933195; x=1705537995; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ecki/5hmhCZ1pJBgLNzGL9kIecS6fNHUeL7VAgIOt7A=;
        b=M/CaZ57QYb2AR/YE5NAH+iU3v0+x8+9Z6kUAf48OtfoFLdAiYjyZb/Wy2zHzoiKh80
         syxHWFEKyPEsk1PxQJv0dz2E84SrGCToicwpm30BYNuyZYxMvnqusSpkIC7bVFnY/gs6
         TO1ZxUABEs7EVxg3E6rFgyrCcBf0uqZcmWa4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704933195; x=1705537995;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ecki/5hmhCZ1pJBgLNzGL9kIecS6fNHUeL7VAgIOt7A=;
        b=e5GeHhpt5WZUceXRCqM4j4eaXC7Agzg9GkiQ9uQNGsHKb07+nTWMzXHCysDm4gGyKg
         jm/AQz06poTgxVBcoLU9C34Yvj9hd23xdVEgEICFAAh/+BTGwCRUcUCCmB+hpg9g00G0
         1f51RsPWhHZqxyFotPShZosjAedpvMCzFCWwSCA5GVNYGiOFpF39L/yZ79AlDfgZyGvi
         IaSqsPscHweUHdBjpKx2uk+c+9rw1EPr2YjEFERTmp0MY1EUr3venq4zAJlK658/MQlC
         PRWgvRhFLohUfXuvhWC3ad8QN6y6l6bXvKJJbvNoJ3zuy0TWnX1dp5Cx6K5WC6rGv96Y
         ginw==
X-Gm-Message-State: AOJu0YwZZhARvkRyec0ioarhjs/CVsUbIeO0HyP6XMEl8VgYeKuREMkd
	Pp9fXzDK6myjYvS2JGP9b1x78ORb8RuWiXGgOvIYF6+zBRI824D/
X-Google-Smtp-Source: AGHT+IHNQWXdSXzCP7xVd+KQ6JFtUaUGPBSojZdCCg/xbDm3mSkJ/DsrQoeZfBdeEFxrrWrOaxIHqA==
X-Received: by 2002:ac2:4e4e:0:b0:50e:ca2a:50f8 with SMTP id f14-20020ac24e4e000000b0050eca2a50f8mr85318lfr.63.1704933195523;
        Wed, 10 Jan 2024 16:33:15 -0800 (PST)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com. [209.85.218.47])
        by smtp.gmail.com with ESMTPSA id v3-20020a1709062f0300b00a282c5a3143sm2594161eji.88.2024.01.10.16.33.14
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jan 2024 16:33:14 -0800 (PST)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a2c179aa5c4so88753566b.0
        for <linux-man@vger.kernel.org>; Wed, 10 Jan 2024 16:33:14 -0800 (PST)
X-Received: by 2002:a17:907:1c9b:b0:a28:d5dd:574f with SMTP id
 nb27-20020a1709071c9b00b00a28d5dd574fmr218565ejc.31.1704933194074; Wed, 10
 Jan 2024 16:33:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025140205.3586473-1-mszeredi@redhat.com> <20231025140205.3586473-6-mszeredi@redhat.com>
 <75b87a85-7d2c-4078-91e3-024ea36cfb42@roeck-us.net>
In-Reply-To: <75b87a85-7d2c-4078-91e3-024ea36cfb42@roeck-us.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 10 Jan 2024 16:32:57 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjdW-4s6Kpa4izJ2D=yPdCje6Ta=eQxxQG6e2SkP42vnw@mail.gmail.com>
Message-ID: <CAHk-=wjdW-4s6Kpa4izJ2D=yPdCje6Ta=eQxxQG6e2SkP42vnw@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] add listmount(2) syscall
To: Guenter Roeck <linux@roeck-us.net>
Cc: Miklos Szeredi <mszeredi@redhat.com>, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-api@vger.kernel.org, 
	linux-man@vger.kernel.org, linux-security-module@vger.kernel.org, 
	Karel Zak <kzak@redhat.com>, Ian Kent <raven@themaw.net>, David Howells <dhowells@redhat.com>, 
	Al Viro <viro@zeniv.linux.org.uk>, Christian Brauner <christian@brauner.io>, 
	Amir Goldstein <amir73il@gmail.com>, Matthew House <mattlloydhouse@gmail.com>, 
	Florian Weimer <fweimer@redhat.com>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"

On Wed, 10 Jan 2024 at 14:23, Guenter Roeck <linux@roeck-us.net> wrote:
>
> with this patch in the tree, all sh4 builds fail with ICE.
>
> during RTL pass: final
> In file included from fs/namespace.c:11:
> fs/namespace.c: In function '__se_sys_listmount':
> include/linux/syscalls.h:258:9: internal compiler error: in change_address_1, at emit-rtl.c:2275

We do have those very ugly SYSCALL_DEFINEx() macros, but I'm not
seeing _anything_ that would be odd about the listmount case.

And the "__se_sys" thing in particular is just a fairly trivial wrapper.

It does use that asmlinkage_protect() thing, and it is unquestionably
horrendously ugly (staring too long at <linux/syscalls.h> has been
known to cause madness and despair), but we do that for *every* single
system call and I don't see why the new listmount entry would be
different.

           Linus

