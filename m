Return-Path: <linux-man+bounces-2138-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B272D9F1B50
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 01:29:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CAC5816AAE3
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 00:29:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F533208;
	Sat, 14 Dec 2024 00:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="qstRJycJ";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="IgY/bZ9g"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155038F58
	for <linux-man@vger.kernel.org>; Sat, 14 Dec 2024 00:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=81.169.146.218
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734136157; cv=pass; b=XG44YVjmWVGqd0EXWts+T+P6ECVwh3owITHYV966pZt9PhjDOreYdskan5jm8MlheK7EcgbHJgNSdXd8uUEP2qlU7PWlIV2YDVKD+RsfLxv1nGlNpsJII0novE5ILioyKdcJITw9dUxoYm2lYvPtJ+2nWUb5D20Dv9G3UQuWcyo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734136157; c=relaxed/simple;
	bh=DjLhmJqtbFQUg4LqxOI+n/t++g5Y/kiExvpWKqbDEmw=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Iu0j9VhNsMuVV6ZNcAfXKGr88r05MIGtSbtSGrS5SI2qWSmA0W696g1eFo0G87HF7QlC81/uRjwU2I8a++uhdKNqvf9GqhQkkJFbsp2PTvJ6cEQcy06b7xYKf9US8KMgP+HHnEOi0velB/frqEEs6txCLzc5/k2W5QAznj+TeXE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org; spf=none smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=qstRJycJ; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=IgY/bZ9g; arc=pass smtp.client-ip=81.169.146.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1734135789; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=sxHdss2OkK2EIgj4kDopw3wjqKjCGYrLa2Ze2KJ9W5oh7Pr6y5Em7/ROJPCURpjRZ9
    tfzCVsrUox7i3KGD2DlPUySxO7XQso4shsMtnlX2s+Q5/LOeE5/1Ul7ZIivmdrP+idEj
    a1lwPNCQ/OLDvvEg68gIkhyiXDemFMDLnLg9w2a8/+/7BNDVqFD0jV5IA3lfzahpCdmM
    UmqRz6ci423x7ylEva9bYBJpr0yd0KdrHwA4tNBqrotzUzxTvZA4avst+ITrysWaJUpY
    3j2tdD+yfEOJGOzvVNkUXUdWXyyb9jfS81WPjvQiVUdUjZX6wm+MgODMFoKavkCDuwdj
    hsgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1734135789;
    s=strato-dkim-0002; d=strato.com;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=yAMGOihGiHxPPtr6a2/8Df+iY8DPKGCB31DbM7CclbQ=;
    b=YSNqN5imtYvYDvnuOJjFlNsTNO3cBCDwHsd7WkW0GYevA2hAie9Zi3I25dvX4xKx1V
    G63EVywEg7Ca+Mk5loH5wl5jcnrbUTnxGcrZZx6QZnobTlVwNNkSdNUE371b1T8/WBIO
    qI+UB/Fll4YQce+hdQIHBNHXmDkLpqrsoFhts3omdq3hAFXlZkJG5+Bkfv0xd6VHI99j
    0EGoD1EY1OkHhMxZ+qqzq3/83k7y3Jy2geHkWCyFy8rYi2UN3kXV81cp/BJhfGFwRHSn
    ht3n2J39c7YXhtQ672O3WgP7OFgtbiaQQV4U56wkwP/gyVBP3ZocXBviAc4RsB0iaHMS
    ByBw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1734135789;
    s=strato-dkim-0002; d=clisp.org;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=yAMGOihGiHxPPtr6a2/8Df+iY8DPKGCB31DbM7CclbQ=;
    b=qstRJycJBVR1fsumYMHRSqKAo6SwxASUw1Taa7uAvypcRax6uVcArnt0gwIe/HcrB5
    3I1Yc2mofFAb/0ZdaSYN9HbtINyclY7k6BdVRnLBXelvszfj5oHFiiQuhX752zyolcYR
    rpMRMBaJH+KheGD7wDaB6Jbe2DkgV7i7Yd4Uz2+KmQprn2UmZd8rcr1Z1/fDk7Ir6TYs
    JTPD74AtMAL9SZQpgv43DeOGAUu7FsZhGmtYKWHhSQdfMfVku4Csecdy9iXH17J+grbx
    UTBGMb6iykT710mVXQMD/Dcob0wspNqHMJUgekRfjgcKuEnjLsQrWWWBMPFAZj3Y2ly2
    KXug==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1734135789;
    s=strato-dkim-0003; d=clisp.org;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=yAMGOihGiHxPPtr6a2/8Df+iY8DPKGCB31DbM7CclbQ=;
    b=IgY/bZ9gzTYkG64o8PVOGEbWAtzOgK/gysS3ulN6odJEj6MiXQW2GSRQ8lbxRAXvgt
    QlkYJFZtdoYpKSNV6sDw==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlLnY4jECd2hdUURIbZgL8PX2QiTuZ3cdB8X/nqmabFzq5a+FoLrNjOvYVO4GsP2jK"
Received: from nimes.localnet
    by smtp.strato.de (RZmta 51.2.15 AUTH)
    with ESMTPSA id N7c3f40BE0N95iG
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Sat, 14 Dec 2024 01:23:09 +0100 (CET)
From: Bruno Haible <bruno@clisp.org>
To: linux-man@vger.kernel.org
Subject: names of ISO 8859 encodings
Date: Sat, 14 Dec 2024 01:23:09 +0100
Message-ID: <3678665.hdfAi7Kttb@nimes>
Organization: GNU
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

Commit 3ed1de0ddccb42bae4151c7225d3fddeab04ff43 should better
be reverted, IMO. The ISO organization or their *standards* can
be renamed to whatever names; what matters here is what the
*encoding* is commonly referred to.

The *encoding* names are standardized by IANA:
https://www.iana.org/assignments/character-sets/character-sets.xhtml
The first ISO 8859 encoding there has the name
  ISO-8859-1
or
  ISO_8859-1
and the first among these is the preferred MIME name. So, please,
in encoding names:
  * revert the ISO -> ISO/IEC change,
  * change the space after ISO to a dash/hyphen-minus.

Likewise (partially) for commit d5e5db91ece5955b21ae1aedc03ba1d56d3cf423.

Bruno




