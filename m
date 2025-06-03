Return-Path: <linux-man+bounces-3087-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1D4ACC4E1
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 13:04:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A5F118888AC
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 11:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03F8B229B21;
	Tue,  3 Jun 2025 11:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="GJePROTd"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135822288CB
	for <linux-man@vger.kernel.org>; Tue,  3 Jun 2025 11:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748948662; cv=none; b=kGFDCAqyA5XVQnXhjRUt+NiUK3vKmfmG/Ewscz7AFjsOvh3ABqwKVa4S7FdRYUv75RsfKsNMbiT08SyF6BrOq0L1B7W6xNt1syApV3yguGQvI/3jXfZKoNjJEix1Fu6yaWaQkgBVCuhb/lxQoGw/19muyNuRVKfZahZFpSw4bR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748948662; c=relaxed/simple;
	bh=tQxr16PUTwugIeS+ImEvh9qXJ1NesWdNjS37NglrCXk=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=nyJVzrjRVYutxcE3kcLF3pJ55Ke/hwjfD0LxgyT/D7bgrsX/4KEIAY/2FPwly04/xWwiPG4vr4grZkU2vCQT3UtfSvTynz8qRqMMOp8V7KiedIKIOLHJJ6q1xPFP1D4nuEXSbuYw6gnVPH8UH6+qtj967FXlm/QcAbEjSqK0e0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=GJePROTd; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748948659;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=tQxr16PUTwugIeS+ImEvh9qXJ1NesWdNjS37NglrCXk=;
	b=GJePROTdV/4qYwbrBBk0KG5biI5pjcedO1mekHig9ZvYOCnXdYD0xUf5q7CagpEK/Jg4hJ
	ZKei7jkRdJvnLEYqZye1fvaytntooK6bx7uA8vCntLxd1m/s4TpS2anfSz7wsm7oHcdf7Q
	qRSjqL8SsRVIz/BAe9PjHCXQv9eAcp0=
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com
 [209.85.216.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-44-dqQtytJePgOMJsutvDnCSA-1; Tue, 03 Jun 2025 07:04:18 -0400
X-MC-Unique: dqQtytJePgOMJsutvDnCSA-1
X-Mimecast-MFC-AGG-ID: dqQtytJePgOMJsutvDnCSA_1748948657
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-31215090074so8753566a91.0
        for <linux-man@vger.kernel.org>; Tue, 03 Jun 2025 04:04:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748948657; x=1749553457;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tQxr16PUTwugIeS+ImEvh9qXJ1NesWdNjS37NglrCXk=;
        b=j28jHzaYRhlQnTHlxw6ZFzRO5ETYd64fl0dLzMCg263Lgwzupk4p1K+XmTxhqvrOYJ
         CG1V3uS+hE9DnjEyeRlkD+tpWWNxaaU2W1r+YZQsrzvq6g66H+6SGeUp7wRI7nQeJq/R
         NQ/mYiGVkWXf82BHMD2ZrNlDm+lE+9Xmrhjfkl7NdsvFVHKA2gBIPjlT83VaulVCu6tC
         RUq4Tv7mPuLJMC7xWBC3SIIPVXRz9tCAzRYrEjvJWIYfc69QyvIoXD0sy1kKQhMpg90S
         VOaWxqKgJ48+ZyPldI/Yko4dmvnw9CW0+R9hz/ccklXXWvJUdm8p7Ef+f3h35WGgF8n9
         krYg==
X-Gm-Message-State: AOJu0Yz0aDaQx4uwxjJWRP3mNncba9pn4YonsKStFxXJJ7WoBuhxfy3x
	otfTWz6TDBdeHjRpQqAwsd7X7hoFcW61sgq74aTuMKmUngeQtxEbdCIzyRojkqLdOyHX1NvjwpM
	7g+lYLr32aFPWCW1DmsvNXw8wbiyfsJT6w1+0HqJZtIDNK36+v9F0adH8wbBb0uGVbc4IJkAdu/
	4j6JEFtqNu/hwbOPhqTsFCspIgMPt1E334V0DbrG76BOi0
X-Gm-Gg: ASbGncu8Y/2Z+3430nIW4hJJWe8pRNkGAQ38HGflPjH5P3/vgnBOa6yVKrUMbV5T7ho
	/7yAhd7czWYYN2qoip7Sg+CUB2aLjXyTdAfuU8jJFhht2/0uBCeez6ZBN4cu0UlB0VbUJKhRNRi
	yp0jg=
X-Received: by 2002:a17:90b:4cce:b0:311:b0ec:1352 with SMTP id 98e67ed59e1d1-3127c6d7762mr19687356a91.11.1748948656683;
        Tue, 03 Jun 2025 04:04:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHEgKM+mWo4B8td8FWjfvRb6Hi35lRwXA0Dc+X/0W4wGYVnIcYCG2TPOgX16Dx5Vv5zGDn6WRKfhYf7qXT6PTU=
X-Received: by 2002:a17:90b:4cce:b0:311:b0ec:1352 with SMTP id
 98e67ed59e1d1-3127c6d7762mr19687321a91.11.1748948656372; Tue, 03 Jun 2025
 04:04:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Mark Naughton <mnaughto@redhat.com>
Date: Tue, 3 Jun 2025 12:04:05 +0100
X-Gm-Features: AX0GCFvOpSVN54u-fqi2u2ZGqA3Ymr7Mahpysb57mCt2lHhW1u4-9HBO-kJO734
Message-ID: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
Subject: Forward Deceleration Changes
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

I noticed that recent man pages have started to include forward
declarations in function arguments with sizes. These are a C2Y
proposal. I was wondering what the justification for the change is?
Shouldn't the man pages stick to standard declarations to avoid
confusion?
e.g fread() and fwrite()

https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man/man3/fread.3?id=d2c2db8830f8fcbb736bdea52b398257447bef6b

Thanks,
Mark Naughton


