Return-Path: <linux-man+bounces-3354-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C549B1C58C
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 14:05:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 193B43BE335
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 12:05:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AAEA23D2BF;
	Wed,  6 Aug 2025 12:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="QIkmub3v"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o95.zoho.com (sender4-pp-o95.zoho.com [136.143.188.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6DAD86337
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 12:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754481916; cv=pass; b=uybrs+70/PolORYDaHNLiFaMP/SszoOfEtuOaxe3giKNULz3HzEaCHmPozz7iKOF0BXPjmpMLJDN/R3bwZ7f2QMjTcsyPbbc/FpN1BfXfJVtSC6M6LVR7esvRObaFEKsvGfSQtRgoZQ8Ruqu27ib42UmpQPRQoW2U1nTIHNGJ+4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754481916; c=relaxed/simple;
	bh=Pk9uj7pNC8JK9XpIIUfhyAg5PC2uyOnjMdm+MkqnZvQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qleHfFI2K2cdrf6sBobUTZ0WmvrQ3VBTN9PWSs/6E2ClexWBeQ42vVNOtIi6NOtVArWtYluYJUzbbrGLol3iJUdzPwtW3UQif+PS8fQR6vPXMKLNugQ6DD8ohRgaLcQ5e1iotUHVbIVWjYqqW9wOlYKnUeztK2/FsPhweRwjT+c=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=QIkmub3v; arc=pass smtp.client-ip=136.143.188.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1754481887; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=RCQWCHqIpw4eN9dLlgC5CaI1EKURXSbvRoj/RLpVZKQkwAji5lhIvuGHNLilvvBsIWM4C6GFpH4jp3oL0qIxTwiZJlRcS8S2G+sBttTUKyrShdw3lgvRe3w0Dhg2KT3Gx9jYrCN1olZoHk8+yCzBkLgsz2Nx6pvTSX1aCUTqH5k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1754481887; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Pk9uj7pNC8JK9XpIIUfhyAg5PC2uyOnjMdm+MkqnZvQ=; 
	b=fJtyt8/dOiwMe8eamMzsM1LR1o10neZRvBiX3l9eSipWtL27/JiZ9Ah7FO+dD0+Jmqr2Jmm9jE08yfZvr/F+QISWA1YMdoPYcRfyBmLZAjg74GwgvuWL9uihZe8/f2cQSNm0J/yjmJPB1IYffNIt9ZcbbSqEG/7nBnoROkpSHwU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1754481887;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=Pk9uj7pNC8JK9XpIIUfhyAg5PC2uyOnjMdm+MkqnZvQ=;
	b=QIkmub3vfz/uu/YH03Uh8MPwLd3vvCbMhKwAK7TlQ46H53dUNdnFRlQr5OHGk+Gp
	dCOeiCS9N/fWIfUl5kfjPgNoVbjbuN6TCg3N/1skarW+eogKUZebsF+igv35ZFy2U0d
	hkx/oFiEaKLKOa1DkHlFeUo5ok0O6loIK8LfAlM8=
Received: by mx.zohomail.com with SMTPS id 1754481884038320.94484904461285;
	Wed, 6 Aug 2025 05:04:44 -0700 (PDT)
From: Askar Safin <safinaskar@zohomail.com>
To: cyphar@cyphar.com
Cc: alx@kernel.org,
	brauner@kernel.org,
	dhowells@redhat.com,
	jack@suse.cz,
	linux-man@vger.kernel.org,
	mtk.manpages@gmail.com,
	viro@zeniv.linux.org.uk
Subject: Re: [PATCH 06/10] fsmount.2: document 'new' mount api
Date: Wed,  6 Aug 2025 15:04:38 +0300
Message-ID: <20250806120438.83633-1-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250806-new-mount-api-v1-6-8678f56c6ee0@cyphar.com>
References: <20250806-new-mount-api-v1-6-8678f56c6ee0@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr0801122772b89e171a22741dabc4003d00007219df2138733964b68cdcd0710f8fed2bd34ae9e319046506:zu08011227b9621e9be15e7b59a562a6b200000258e5b9975c1c215e506561056ff98c266b52657267128158:rf0801122cb015e266d3efed399893dae700006eaccb291dad9cc965dc9ead50bac460cdaf0391e25cc37a1ba47937a358:ZohoMail
X-ZohoMailClient: External

> The resultant file descriptor acts the same as one produced by open(2) with O_PATH,
> meaning it can also be used as a dirfd argument to other "*at()" system calls.

This may be interpreted by somebody that fsmount returns exactly same fd as open(2) with O_PATH returns.
This is not true, because, for example, you can use move_mount with fd, returned by fsmount,
but cannot use move_mount with fd, returned by open with O_PATH.

So, please replace "acts the same as one" with "can be used as one" or something.

Also, please, replace 'to other "*at()"' with 'to "*at()"'. No at-syscalls were
mentioned in this paragraph before, so "other" is not needed here.

> /* Create a new file without attaching the mount object. */
> int tmpfd = openat(sfd, "tmpfile", O_CREAT | O_EXCL | O_RDWR, 0600);
> unlinkat(sfd, "tmpfile", 0);

You meant mfd here, not sfd.

--
Askar Safin

