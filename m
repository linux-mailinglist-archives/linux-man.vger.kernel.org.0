Return-Path: <linux-man+bounces-4243-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E199C29141
	for <lists+linux-man@lfdr.de>; Sun, 02 Nov 2025 16:48:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EAAF734614E
	for <lists+linux-man@lfdr.de>; Sun,  2 Nov 2025 15:48:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A16D8635C;
	Sun,  2 Nov 2025 15:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=rsiny.com header.i=@rsiny.com header.b="gBk8d6U1"
X-Original-To: linux-man@vger.kernel.org
Received: from omta36.uswest2.a.cloudfilter.net (omta36.uswest2.a.cloudfilter.net [35.89.44.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7B0EEBB
	for <linux-man@vger.kernel.org>; Sun,  2 Nov 2025 15:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762098477; cv=none; b=sOu06ZAxSjAlQV63F8vcucDVqLGi+ySbD2CcEhnOUfqp81sSbp5yJLY6oUXYtHWdGojoU1X26YZ2hGN9/tJdprs0RAAtcw44nFDLIk0Q4RbeKhHNURcK4W1IWxNEoNQ4Gsdimd79oG/J5V4qEq9fBMTTRXkAJhj4hO2SIHfYf3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762098477; c=relaxed/simple;
	bh=fXGfIzMwP+oIJHas/m5VEfm/s830Zm7PZgAkrHdbGCA=;
	h=Message-ID:Subject:From:To:Cc:Date:Content-Type:MIME-Version; b=G0LDGwN9kXEJz8haoeBsJeWsNjqugil3M3jzDIhPnjsphvuM5Ml9QZTjuDt4Z3RxAuvRWU3SbgLUMafVelbFTnyV7npb1HQ7K2nNmydy3Dm7VNOwedllr2PHXwtIgQX+cIvQqBZ+cKqjnizR6XOGEvL2iMcGsUzESFvPET1lMNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rsiny.com; spf=pass smtp.mailfrom=rsiny.com; dkim=pass (2048-bit key) header.d=rsiny.com header.i=@rsiny.com header.b=gBk8d6U1; arc=none smtp.client-ip=35.89.44.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rsiny.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rsiny.com
Received: from eig-obgw-6004b.ext.cloudfilter.net ([10.0.30.210])
	by cmsmtp with ESMTPS
	id FYLNvS4JcVCBNFaJ3vsv38; Sun, 02 Nov 2025 15:47:49 +0000
Received: from gator3203.hostgator.com ([198.57.247.167])
	by cmsmtp with ESMTPS
	id FaJ3vvkzGEQP9FaJ3vcWWI; Sun, 02 Nov 2025 15:47:49 +0000
X-Authority-Analysis: v=2.4 cv=MpNS63ae c=1 sm=1 tr=0 ts=69077d25
 a=vC5mKVSCNjYeKhnms5QpbA==:117 a=dZyYEhY6Uc3iFMkTI0LykA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=VLA-vofSqycA:10 a=GcyzOjIWAAAA:8
 a=-oPXOJOlAAAA:8 a=czg6k9X57LdCjare8Z4A:9 a=QEXdDO2ut3YA:10
 a=hQL3dl6oAZ8NdCsdz28n:22 a=uOPXFodjOu4k-i0eYj75:22 a=jd090qJjdgtkHixrxZjS:22
 a=YvEdvsDKhhPdmou8X6BG:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=rsiny.com;
	s=default; h=MIME-Version:Content-Transfer-Encoding:Content-Type:Date:Cc:To:
	From:Subject:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=ko7ecGZZoH0UkmwcCHY+2DsbnXKc8WOmlDaWMZfoS88=; b=gBk8d6U1m05veI9s4ViNNcXVCA
	yW+SV3P9EyhYMPho+m/ymHavZBNtNv46bqOlqF+pO1RdwcXOYUxw1QUux4X7lFU3I2BRzc8QAgWDb
	pQsLMqIERL9yd7FCEevvbE+G/C2nggy93V205Hur6x0QIZevqmFCg1n59fCNhQWHUF2HJG5BDVSF3
	2rf+U4kPeBUm7lRfRsYm08BVETIf6EvkXJjQkQhUp8Qb3GZ0S904xMvzh9ww2bbgYEN6plzbo5I9Z
	QksjoD83hGkh71UD11s56b36Q1CQMHjqwWUbvXfOFKdnYk7+gu+6SN4Xv4EdGuJfnQ61YmQ8coDAn
	6h0AV8sA==;
Received: from [72.68.184.91] (port=57052 helo=desk.fios-router.home)
	by gator3203.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <rstanley@rsiny.com>)
	id 1vFaJ2-00000001jK3-37xf;
	Sun, 02 Nov 2025 09:47:48 -0600
Message-ID: <d167e81b58255fb1e3bf068adc146e7a461981bb.camel@rsiny.com>
Subject: Errors in two Section 3 functions
From: Rick Stanley <rstanley@rsiny.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Date: Sun, 02 Nov 2025 10:47:47 -0500
Organization: RSI
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-5 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3203.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - rsiny.com
X-BWhitelist: no
X-Source-IP: 72.68.184.91
X-Source-L: No
X-Exim-ID: 1vFaJ2-00000001jK3-37xf
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (desk.fios-router.home) [72.68.184.91]:57052
X-Source-Auth: rstanley@rsiny.com
X-Email-Count: 1
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: cnN0YW5sZXk7cnN0YW5sZXk7Z2F0b3IzMjAzLmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfC16hxXKAiqf967S/kf3g4eZ00R+JBiN28BqLXukivaNGpu8S8wLpzyXEitP6HhnGYY9RuCWPGcQxkujZm9wIv7ba5vCpNvYl1kX0Y2E1GLaXrn+yRKB
 NfeCpP05zRV6iy5gFcWQ5sBZZ08s4I+nmaG376qLJ4jGYGPvl2gDfubd6lShTKBJpExjCEHvEa82vcRwnqhIUNxm+Zgcsr+1l7c=

Hello!

I have noticed two errors for memmove() and memcpy().

memmove():

man7.org:
"void *memmove(size_t n;
                     void dest[n], const void src[n], size_t n);"
string.h:
"extern void *memmove (void *__dest, const void *__src, size_t __n)"
(Leaving off the __THROW text)


memcpy()

man7.org:
"void *memcpy(size_t n;
                    void dest[restrict n], const void src[restrict n],
                    size_t n);"

string.h:
"extern void *memccpy (void *__restrict __dest, const void *__restrict
__src, int __c, size_t __n)"

The issue in both is:
"memmove(size_t n;"
"memcpy(size_t n;"

IMHO on man7.org, they should read:

"void *memmove(void dest[n], const void src[n], size_t n);"

"void *memcpy(void dest[restrict n], const void src[restrict n],
 size_t n);"

Thanks!

Rick

--=20
Rick Stanley
(917) 822-7771
www.rsiny.com
IT =C2=A0Consulting
Linux & Open Source Specialist

