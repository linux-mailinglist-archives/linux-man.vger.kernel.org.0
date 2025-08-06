Return-Path: <linux-man+bounces-3341-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9FCB1C18A
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 09:46:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A4DF77A9C3A
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 07:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 328971C8631;
	Wed,  6 Aug 2025 07:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="eIMNsS3H"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o95.zoho.com (sender4-pp-o95.zoho.com [136.143.188.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620FF3595C
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 07:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754466410; cv=pass; b=Pxcn532e7QXo2ouyYYtWqeo20jtmfQidS5mS2oVNARHKc91+e7bAT/XuHRTBHwWI8vDpjNqgonHPp/cMcTlfjnwfZVBe1Rer37eCvzbzAfOKKy9Ptacewq8zEwcIu9L2JXp8du7+mr+o0ob/aG2GgSrNO/+GDm7lRBC7ZdkKLZ8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754466410; c=relaxed/simple;
	bh=PCAA+81oUdQQYCBrbpoeBOsdjnepyaDvYkC02d11QAc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hGAZoU1J9PY34g6rgillKNaPDQjYVhmW++gzh26r9w0+qvfmgWaU+aoobQbGBqc4AvjRY+kVDibbJEHWCESBdqCbQ4LbZVFwLQHXcsNGqFA8Ugh/u+PzP6ObvMOnC/vMES5N38KQsvJZyFSjAENabaza6Igiv6Rn9sFukdY64k4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=eIMNsS3H; arc=pass smtp.client-ip=136.143.188.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1754466388; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=bTCaswmMda8u7UG33wAX0zH5xY9a5mF7+m5+6OgXfvq0H1PV/kur0rxk5tQwDGSMnoEtjVoZVvOcFJdvE4LeZtkrmDHfwapcXD2fBuwZfcTn1YyI2YF6H2MwZ0g1RBu9cz9hUm5XUrQAMmyI7DYyVDRBvrDU6/BnOSCiEnZLe+w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1754466388; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=YHm61e4nFTfe2GC8F7V97qfQTpZeTL3iG8ln/3AXbAw=; 
	b=B/O09Eqa/Bed+QcTOEB8ZTSRZeS7qjEL+6xSCj+7vYXHLCQZM8qWoW/kxLeru1095HDwwhVEdPbl6O4cYemIyUrnI19RGbfpLJSIE/ArSc7EURtfv60zCy95X/gxvYl3m0p892XSA5EpEQutRF4gP9QSl5/ma7VaE0CfqvzpuXg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1754466388;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Type:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=YHm61e4nFTfe2GC8F7V97qfQTpZeTL3iG8ln/3AXbAw=;
	b=eIMNsS3H7E+aJZhPaVNpjouWRr7GfD5NqkqyeD+YB6ziqIrdutbBBHY4Fm61a43Y
	Kh0fq+3NHPyMTEEqlzgBU5Wl6Ub2td5JDnfD9VEVeTOTd4Q4vDeqOdQGj01od6L1hGx
	qbAR7ggUtbJ1ZBkm6G3VJt0tPy3wBAoTFYhlhX3Y=
Received: by mx.zohomail.com with SMTPS id 175446638489474.94223613614383;
	Wed, 6 Aug 2025 00:46:24 -0700 (PDT)
From: Askar Safin <safinaskar@zohomail.com>
To: cyphar@cyphar.com
Cc: alx@kernel.org,
	brauner@kernel.org,
	dhowells@redhat.com,
	jack@suse.cz,
	linux-man@vger.kernel.org,
	mtk.manpages@gmail.com,
	viro@zeniv.linux.org.uk
Subject: Re: [PATCH 05/10] fsconfig.2: document 'new' mount api
Date: Wed,  6 Aug 2025 10:45:03 +0300
Message-ID: <20250806074619.59685-1-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Feedback-ID: rr08011227016edf6e511616bb63fa218e00007e895704185ff29b9278e49c3f036b78ae758e27457a8efb17:zu080112271e97750aa0860e19783e9d400000dc878aef42a179012c8e2b1c7f264d2b9c6ea69a4d5811eb35:rf0801122cf7ec0ff3cbade935716c53db000013044f2c1b58c0efc8e04cb91acdf96650d2fd4dccbe46c9fc92715b69df:ZohoMail
X-ZohoMailClient: External

> and so a parameter that accepts FSCONFIG_SET_FD may not work with FSCONFIG_SET_PATH (or vice-versa).

You probably meant FSCONFIG_SET_PATH_EMPTY here.

Also, when I render this manpage using "man", I see this:

> that the  underlying  file  for  the  file  descriptor  aux  should  be  used  as  the  parameter  value  directly;  FSCON‐
> FIG_SET_PATH_EMPTY  indicates  that  the  underlying file for the file descriptor aux should be re-opened by the filesystem

As you can see, "man" breaks word "FSCONFIG_SET_PATH_EMPTY": "FSCON" appears on one line and "FIG_SET_PATH_EMPTY" on another line.
Can you somehow prevent this? I. e. to prevent breaking of API names. This is very annoying.

> And here is an example of how fspick(2) can be used with fsconfig() to reconfigure the parameters of an existing mount

As well as I understand, you meant filesystem (i. e. superblock) here, not mount. Please, re-read all your manpages and double-check
that you use terms "mount" and "filesystem/superblock" correctly everywhere. As well as I understand, clear separation
between superblocks and mounts was one of original motivations for creating "new" mount API. So, this is very important.

So, it makes sense to write definitions of "filesystem/superblock" and "mount" somewhere (for example, to the top of manpage for
"fsopen") and then to use these terms consistently.

Also, thank you, thank you and again big thank you for this big work! We waited for these manpages for many years!

--
Askar Safin

