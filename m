Return-Path: <linux-man+bounces-3249-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF66B005F2
	for <lists+linux-man@lfdr.de>; Thu, 10 Jul 2025 17:07:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F4935A7F0F
	for <lists+linux-man@lfdr.de>; Thu, 10 Jul 2025 15:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F91D271A71;
	Thu, 10 Jul 2025 15:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XajMpbR+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB0A173;
	Thu, 10 Jul 2025 15:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752160041; cv=none; b=E4y4fIGFioRv2AkrNFRA3WnGJIpX9EvCLvCyqavnzZKywFeZAbH0PGnukFDP1yLY791IL8UmFL5/0t9J0H7YILuYm3IL9MbfXBoI1Mud+BSMB/nYUdeSvzKc9fWLaCLdvuXrC0qEVL/xRwRChcVmwrvGzTPUmXxUd/lsklVG1Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752160041; c=relaxed/simple;
	bh=9U1epZLZQM7hFmBfZgNPaqm8MR6dRz37kDOZKH4yF4s=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=LEEBsrlxxHAtW/1oIszv4j8nNTb2zwNm9H0nj24D5yM0LRFe2WT7TdEdb0vynW0N3mMUHqsEj7foQ1gE8nnuhXOgr+lZm/RV4ZoRNB/MGzRI6+ngJjZ+CsKV1+wUzMJi2PB39UG85QNb4IFccHlE9FJDHJir9e8byy3QDh9cpVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XajMpbR+; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7da6ca0f1acso117952685a.1;
        Thu, 10 Jul 2025 08:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752160038; x=1752764838; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Atql6nVfi6fDKHIUJVvTbc4Me8TMOZVeEvM0dpNfZG8=;
        b=XajMpbR+2iaXGcyyWI8rqY7ji1iKuo+DqOlGCpSte/sVhOQ69iT+gnckdk9PQR8MEu
         GfTXGS75EKm+yG/LI9LzZFYS0yazZw2ke2ZodbXDXloNIiFKQWdvkYS3Qf/jmKNIHswY
         S6we82Q3WikSVCJsGeOfmp/BMxqZCodAa6Effyay+5NqdgNuY117UXYpL8Erl5NrqG1r
         BWOkbrwcD3f7BHACS3ou1gZMjS1fZ7XKdPBs1yx3gdPN+7GTqaYAAKarOAZ4Dkfx0jwP
         qAzFkHjVhgBcRtn+itO23oOnh09YInS8kqb9Z36zcif15H8xUExfdQKIGAyiHRAIlk2p
         bi1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752160038; x=1752764838;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Atql6nVfi6fDKHIUJVvTbc4Me8TMOZVeEvM0dpNfZG8=;
        b=htjlC7m+oHsXCswhFINTPNWJD8if35ckHbLPVJDLu0g/OA1qXl5jDL3LhRrg8XGQTk
         MGmTPk/Xs/50l0WKNaDq2Q46+sCUC+m5rd1JYothnE0snzehaRz3G1OpapvvIFnkVJA9
         MURHfIY1wuVdrk3F+u63hOtLO/tlXZtQIA4ldfIz+JVqsgtc/eYE0v9Lh+1WzeHxR29Y
         T3Sj+zbW9SSHXIqNaS7ysYQiZ0j8ULQCAmxxJD3pRje00uTBBNygpEi1nsH+aGfEnmCB
         rDVefpSj42S6WjEzEHprPz8qsToyPNb5jhREDklhBocj4c5ScW+TYFvln30oaCpjnhxd
         FG7g==
X-Forwarded-Encrypted: i=1; AJvYcCUSeu/6YMEi3PByvG1x8aeCzmCYpgGwARBh6pMpOGLiboGM9pCcDhnZNOTrF0i5gC+yPaFVuZvIemw=@vger.kernel.org
X-Gm-Message-State: AOJu0YxO7SZdbZItPYWqGH2bWhuAN1JRV4Bq/9ZOjTepu3ywtmkEemWJ
	mcLDWpFnzgfA6eUzmHpK1hV7pZ6q+NC8cOYNWSKnamGc6c0i5v2d/B/895XIiQ+intukrv91cXW
	9T/qnMbABabikdbQX9uWK6/oW3hMdQNdT/bsaf2Y=
X-Gm-Gg: ASbGnct1RClc+0WzywOisPPIALPi4n3cYh5ahFgHVu7tg97NMmzb+efhBhdRp3kLdbX
	+OmGVyH8H591ycPAUidEgicnZ+6S5yVLkIBsStxOzk7DPA6qjqOAeym6iuUrCJFmfwHM/W2l/l0
	OaGa/dNbqqwmaCENfzOBE8sx0ybtpeilLadLmwWWLEHIAz1uvnjw5ZWa909q2zpCawL8zz+hTEN
	gk=
X-Google-Smtp-Source: AGHT+IHzY3HZjbdx7ILFWP9PZmywEbG8PwpyEyfni/qAyCCIhEv3Kk+vzekVF9OKAl5m+oQpNDLr23HmZzG5iYxpBVs=
X-Received: by 2002:a05:620a:4052:b0:7d3:a7a7:27ad with SMTP id
 af79cd13be357-7db7cead91fmr1059458085a.37.1752160037566; Thu, 10 Jul 2025
 08:07:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Steve French <smfrench@gmail.com>
Date: Thu, 10 Jul 2025 10:07:05 -0500
X-Gm-Features: Ac12FXwSQKvwCgLt0BXm7eGL9c21p3d_ONylHlm-8LuwW63IfLX0kvFBGlvs54E
Message-ID: <CAH2r5mtwv16LtkbXywgA=LMe71=jY64j6qUr38nqV=mKgOUTgg@mail.gmail.com>
Subject: Missing man pages
To: Alejandro Colomar <alx@kernel.org>
Cc: CIFS <linux-cifs@vger.kernel.org>, linux-man <linux-man@vger.kernel.org>, 
	Bharath SM <bharathsm.hsk@gmail.com>
Content-Type: text/plain; charset="UTF-8"

How can we get missing man page (mount.cifs) added to man7.org?

https://git.samba.org/?p=cifs-utils.git;a=blob;f=mount.cifs.rst;h=d4890706a0fed73f05b3a228971756b57efcb9ba;hb=refs/heads/master

I noticed today that mount.cifs man page is missing from your site
(and presumably the user space tools man pages are also missing
cifscreds.rst   cifs.upcall.rst  idmapwb.rst     pam_cifscreds.rst
smb2-quota.rst cifs.idmap.rst  getcifsacl.rst  setcifsacl.rst
smbinfo.rst)




-- 
Thanks,

Steve

