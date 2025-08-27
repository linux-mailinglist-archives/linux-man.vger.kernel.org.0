Return-Path: <linux-man+bounces-3742-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A38B37987
	for <lists+linux-man@lfdr.de>; Wed, 27 Aug 2025 07:02:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 478577C0C41
	for <lists+linux-man@lfdr.de>; Wed, 27 Aug 2025 05:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCC2A19DF62;
	Wed, 27 Aug 2025 05:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=r9.pm header.i=trillian@r9.pm header.b="vcB1W/XJ"
X-Original-To: linux-man@vger.kernel.org
Received: from sender-op-o14.zoho.eu (sender-op-o14.zoho.eu [136.143.169.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C752DCF7B
	for <linux-man@vger.kernel.org>; Wed, 27 Aug 2025 05:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.169.14
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756270883; cv=pass; b=eJdEPX6XUPutr98NkrIEHYDtAzV/hduqdGWYFnXbN5uBLxgMSwXii2czDun51Hmf7NfRwbI/c2ZlFgIomULmEG1UA/iL2ss3XQJtDE5bmQrjpb1LIzB7fFBRe6pZ2WVYBLNIG7kV8MsIOTJr4N+WTXewzrYpP9yr2e9mPApoAFA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756270883; c=relaxed/simple;
	bh=wnKM1TwvUmOMQbTKf2dhxd+4PMcHTjLHbsMyMqOtWSo=;
	h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type; b=B589KeBGLHZqBPbI4WGKxjhQFtsXbYwZ0XADjyJJHBwHeZy7lk3Fv4TFkXqQ12p5SMadqVdsbAh23LgaUCLS0larmbSVpSGKkd6LpbHFgDVzQrAhgsXsfNVFwR2zW55rjroYFcZMCjWCm/Syz946HhQ0BwKjFuXNokUZWoW1tCU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=r9.pm; spf=pass smtp.mailfrom=r9.pm; dkim=pass (2048-bit key) header.d=r9.pm header.i=trillian@r9.pm header.b=vcB1W/XJ; arc=pass smtp.client-ip=136.143.169.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=r9.pm
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=r9.pm
ARC-Seal: i=1; a=rsa-sha256; t=1756270855; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=OvJdQAVxj/zA3zTR0s5nb2rNlPcmscTydkfLRqDZv9jqI9YvmLDyrHprzKMDlIZzeCeBqlCZlu9IyKzZpydJqgdpgBAirtOjazqY5kd8l7RrjbVnbU7Jc6x4JQHukd/cc/pS0HC53PDg3sDmenqs6vIS3kOI1shq5ZMqzVnFD7Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1756270855; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=wnKM1TwvUmOMQbTKf2dhxd+4PMcHTjLHbsMyMqOtWSo=; 
	b=OYiw1m9C9uTDi/V0DJj2tPgA0LnXvLQzG+i0CgU7BQVj8T14usrD1xzAPQOxYbEmXqbVGECrym4RC2kQS4MB4LOAPEiAOCUCLuF0QXD7VvJV/D9iZcXNK4WJNUvzHn9qwMEgXqTES1asOQXsNb2mrYQv1vqBlRdnmUxSwh6l7t8=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=r9.pm;
	spf=pass  smtp.mailfrom=trillian@r9.pm;
	dmarc=pass header.from=<trillian@r9.pm>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1756270855;
	s=sel; d=r9.pm; i=trillian@r9.pm;
	h=Message-ID:Date:Date:MIME-Version:To:To:Cc:Cc:From:From:Subject:Subject:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=wnKM1TwvUmOMQbTKf2dhxd+4PMcHTjLHbsMyMqOtWSo=;
	b=vcB1W/XJPnEXUM9b+ec/VsRZxGRg0zAd0I3HOmCGi7tGfc/BHYq23Uy8SuBHI+78
	eDNIUEd2epTyK0DrZ1DTS74nJ1PstYKX4iwFSAmw/is0h90hjPk/dHdBPdUb8sfv+7h
	CHqK1xDHFYUADbkHRPHu7Isu9Amo1JU6kYwrCfY/sCsiu5AonQKlwgfJAeQVScEHh7I
	zn57MtO/c7Vnl/C8zfvKHb9QvrR1c/LZ8FhbLLOcNW/q7Lx2PuYI3R2f7iPwCXi5Y4A
	2PAYGTgR8vmWlDJpeN7GTV539bYh6Pl5j7rqkyjJhbb9rpTA27PW1csbeRXfV9b4bVI
	J7VVcD3/bA==
Received: by mx.zoho.eu with SMTPS id 1756270852321121.34044069000493;
	Wed, 27 Aug 2025 07:00:52 +0200 (CEST)
Message-ID: <00100b13-bdc4-4a58-a1cd-ef0775644f6e@r9.pm>
Date: Wed, 27 Aug 2025 08:00:31 +0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
From: trillian <trillian@r9.pm>
Subject: man-pages bug report: missing documentation of quotactl_fd syscall
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

Hello,

The kernel has supported the quotactl_fd() syscall as an alternative to quotactl() since version 5.14. This syscall differs from quotactl() in that it selects the file system to operate on from a file descriptor pointing to a file on said file system, instead of requiring the string path to the block device which stores the file system. This should probably be documented on the existing quotactl man page, as the other semantics are identical. (And of course, an alias page from quotactl_fd to quotactl should be added too.)

For reference, the syscall definition: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/fs/quota/quota.c?id=fab1beda7597fac1cecc01707d55eadb6bbe773c#n973>

Note that the argument order differs, and 'special' is replaced with 'fd'. I would propose something like the following as a description of the fd argument: 

"For quotactl_fd(), the filesystem to manipulate is the filesystem which contains the file pointed to by the file descriptor 'fd'."

Also note that there is no glibc wrapper for quotactl_fd, so it needs to be called as syscall(SYS_quotactl_fd).

I'm not formatting this as a patch because I don't know any groff syntax :), and the wording can probably be improved as well.

---
~trillian


