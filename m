Return-Path: <linux-man+bounces-3353-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B836BB1C564
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 13:49:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6447118C214A
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 11:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7098D28C03A;
	Wed,  6 Aug 2025 11:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="a1RgLCtO"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o95.zoho.com (sender4-pp-o95.zoho.com [136.143.188.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5277428B7DD
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 11:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754480828; cv=pass; b=AJNdiJjHotaMayPbUiuSGUDWu/290gSSdfiHuitMuJ6NCRiOgJjl6b7vSYZ4K5LvYKHWJ8wLXIh/dYGP7q9Ws6F+Gz2HRq/IDSa1LWf2Pj1mC+9NYT/1pJugZU9RCVV/dlH2DVt/1xLq2oAyzqEhO0hzzb29GAsU9VymIeqLNoE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754480828; c=relaxed/simple;
	bh=31GB/AuBypgMUUC3iBgitntNSDmeIYwZsvxzP2inFqI=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=C+U50R5fHor0ioA6tE1Pbaj4RFQ1R7Ay0q5d7eN9ICAMxnePhV2d5enUQAfPKRVxMQalDFNlYAm9AwhYZV3v5QWuEXleCxujyjhnuM7ep9uxGsPfCXAVsGL50L4hUTjlPchEol3mF2kifVNLagRCULWmKzGqsHmMsSR+jvT/qkc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=a1RgLCtO; arc=pass smtp.client-ip=136.143.188.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1754480799; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=lXEPJ3Jco7CMPnfFHx48D65GAMtK/ijsLFAkWxj2biTmdRxXt9wuHXosScFj4zj78X6GMQx/BuFd2waLwMrQKMFZo6GHcWqhW9IdLPO63lCnKcWVSCMySbJp+So5Jp7JnF3npU/jW5ou89Anz/Sn1poYJXyMHzKnVctIu8T4V6I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1754480799; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=e1MH81dNQ67rbDOjq/pl29xm7ceUN80J/lHrk8NIozc=; 
	b=GFLNpdMZN2/GgWMq/sDQcdjNIqBcw0aWzUdWaUJXAcl3W8HwnqLX3aDLY/gQ0HEIitfhA2BIVwYp6D8g5rKvYBufLaThBfkzmprLsb3t8rnr1L0LZbiHbu7i2j+lk0YNzl6aACxIGyDuskB7RvCmPrRB24nFytqMCMcqmeWZMGg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1754480799;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=e1MH81dNQ67rbDOjq/pl29xm7ceUN80J/lHrk8NIozc=;
	b=a1RgLCtOGww1t/SYWU0cD3Zcta+6kg/cNfI5EidfMuBULNZe1sxuP9IznpjTJKyS
	rnvi9xc7CMr19nCSzlEks478PcNuWwr2JrfQavaili59t3X2qhe573A2DlTAZyA5LIT
	/4s3YNxTYdoWnztzaMpAuhaAIv4iteL7nCSDs8ec=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1754480797056282.93755844488476; Wed, 6 Aug 2025 04:46:37 -0700 (PDT)
Received: from  [212.73.77.104] by mail.zoho.com
	with HTTP;Wed, 6 Aug 2025 04:46:37 -0700 (PDT)
Date: Wed, 06 Aug 2025 15:46:37 +0400
From: Askar Safin <safinaskar@zohomail.com>
To: "Aleksa Sarai" <cyphar@cyphar.com>
Cc: "alx" <alx@kernel.org>, "brauner" <brauner@kernel.org>,
	"dhowells" <dhowells@redhat.com>, "jack" <jack@suse.cz>,
	"linux-man" <linux-man@vger.kernel.org>,
	"mtk.manpages" <mtk.manpages@gmail.com>,
	"viro" <viro@zeniv.linux.org.uk>
Message-ID: <1987f346568.10c9c841519616.6415778181692450252@zohomail.com>
In-Reply-To: <2025-08-06.1754467977-polite-tests-sheer-baristas-mousy-juniper-YmIjZm@cyphar.com>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com> <2025-08-06.1754467977-polite-tests-sheer-baristas-mousy-juniper-YmIjZm@cyphar.com>
Subject: Re: [PATCH 05/10] fsconfig.2: document 'new' mount api
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Feedback-ID: rr08011227257c3b90de63c70c8da084f8000058a3b95540b68f71ed191d0181b6f69da8d737bdf927cc4534:zu080112271cf2fda45dcccb071cbe0e1d00001ebd70084c342c48bc393b9c4848cd019c272651b18b9b9cb2:rf0801122b6ba96c85d3e93d9c18056b8e00003b9b6929181f3fcd76c6fcafc3803b431fc79eaa48ab4630a8d9c83399:ZohoMail

 ---- On Wed, 06 Aug 2025 12:33:03 +0400  Aleksa Sarai <cyphar@cyphar.com> wrote --- 
 > I intentionally tried to avoid using the term "superblock" as much as
 > possible, because the term is not generally used nor well understood by
 > userspace. The kernel terminology for it is even more fraught with
 > ambiguity because the closest thing approximating common usage of
 > "superblock" in userspace is the on-disk concept of a "superblock"[2] --
 > which doesn't make sense to refer to when talking about runtime
 > filesystem parameters. Kernel developers, of course, are referring to
 > something completely different -- a _conceptual_ "struct super_block"
 > that has little to do with the on-disk kind.
 > 
 > If we rely on the term, we would probably need to add a superblock(7) to
 > describe what a superblock is, which is a much larger documentation
 > topic than just the "new" mount API. It's not really enough to just
 > define it at the top of the fsopen(2) man page (as you suggested),
 > because most of the other man pages would need to cross-reference it.
 > 
 > The compromise I came up with was to use "mount object" when referring
 > to mounts (read: "struct (vfs)mount"), "filesystem configuration
 > context" or "filesystem context" when talking about "struct fs_context",
 > and "filesystem instance" when talking about "struct super". Those
 > seemed more self-descriptive to me, which would hopefully let me avoid
 > having to write 3 extra man7 pages. Though to be honest, I'm still not
 > sure that "filesystem context" is a sufficiently helpful term here, even
 > with the introductory paragraph in fsopen(2).

I agree.

 > In this case, this should probably read "filesystem instance" but that
 > sounded strange to me when the comparison we use is with mount(2) which
 > uses the term "mount" for the same operation. I wasn't sure whether to
 > go with what users are more familiar with in an EXAMPLES section, or to
 > use the more common words. I guess there's a stronger argument to go
 > with "filesystem instance" here...

I still think that "parameters of an existing mount" should be changed to
"parameters of an existing filesystem instance". Yes, I agree that no major changes
should be done to manpages, but I kindly ask you fix this particular sentence.
I still think that difference between mount and filesystem instance is important.
Also, if mount(2) manpage confuses these terms, then it should be changed, too.
(Of course, this doesn't mean that you should change it. I just mean that somebody
should change it.)

--
Askar Safin
https://types.pl/@safinaskar


