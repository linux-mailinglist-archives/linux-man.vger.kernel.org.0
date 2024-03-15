Return-Path: <linux-man+bounces-606-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC48087C6F0
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 02:07:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9639328343F
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 01:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59AFE139D;
	Fri, 15 Mar 2024 01:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="G3jc42gv"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C68910E4
	for <linux-man@vger.kernel.org>; Fri, 15 Mar 2024 01:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710464845; cv=none; b=c3M2BxnpIayWQGnzuO4em/f0/L/ZtwK6YflxgnBLHovvhPIE5K2cCzV8zfDBF9C6zkyvvbwywVpIde1UkDT1TXBiy1eiGAe6o1k0+OoTifyckxlaFUyggtoynLJARbYYQTxyXIdrFVc6G95K8JaaEjD6uCjXCI9gi5HsC+1fvPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710464845; c=relaxed/simple;
	bh=tKSd+dzMCOHHIMthlA+FhziMM6g/AgCIb3PkEX24isw=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:Cc:To; b=pur13mVIyjfpz9SyYb89cfGjPI8EIzLYMXYvqGWEoIAUo6yNhUHScmGtp4iKDEH2iKvz9F6z0WzTNbMPLJXspSegtIQF/TsNXFd8MFOKdq5LnLjBKe6A4dWD5pMVU+9lvDWbMUWX4d4XwfT8RkXq1vj1t3RWISP/7+8oU9ALuUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=G3jc42gv; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id D227D4184B;
	Fri, 15 Mar 2024 02:07:21 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ficPdwl9XWty; Fri, 15 Mar 2024 02:07:20 +0100 (CET)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1710464840; bh=tKSd+dzMCOHHIMthlA+FhziMM6g/AgCIb3PkEX24isw=;
	h=Date:Subject:From:Cc:To;
	b=G3jc42gvrbWKqisDtX4ItB/v/jXyBR27BRnjmbRBSO/oMOfBKGBOxvtoadfz/mwVE
	 vR3L6nDhNhgV2Efjg0vpv3sE06YvZqJzdRR9JuHicfU2AZ5QUmBCLCNmxjjnLpsIhx
	 Ex+KC2zArKXkrMNRojLMVA9zoHCyFPa61sHQMV4dnIjS3LnqLiu5BZ0/7Avn6HeOcZ
	 //dAXX5jXmZZihjRd5zgr50fayFNhp8P78z9fSQH8pkUbVC2Dghk7VKzXSn4m8xcI2
	 wPbzY1LxhYHcZRELFm6N+4upZ/5N0OK5ODp8uI0NVA1wopTCnzV3eLblGyzwsnDHki
	 vjoyiH2fKCPQQ==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 15 Mar 2024 14:07:14 +1300
Message-Id: <CZTX6HB4IQ2Y.261V2LM2EIKZ9@disroot.org>
Subject: [PATCH] printf.3: Return the number of bytes printed, not
 characters
From: "Jeremy Baxter" <jtbx@disroot.org>
Cc: <linux-man@vger.kernel.org>, <quirin.blaeser@freenet.de>
To: "Alejandro Colomar" <alx@kernel.org>

From https://pubs.opengroup.org/onlinepubs/9699919799/functions/printf.html=
:

    Upon successful completion, the dprintf(), fprintf(), and printf()
    functions shall return the number of bytes transmitted.

Fixes bug 218600 <https://bugzilla.kernel.org/show_bug.cgi?id=3D218600>.

Signed-off-by: Jeremy Baxter <jtbx@disroot.org>
---
 man3/printf.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/printf.3 b/man3/printf.3
index eb152aa19..15ed75439 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -875,7 +875,7 @@ No argument is converted.
 The complete conversion
 specification is \[aq]%%\[aq].
 .SH RETURN VALUE
-Upon successful return, these functions return the number of characters
+Upon successful return, these functions return the number of bytes
 printed (excluding the null byte used to end output to strings).
 .P
 The functions
--=20
2.44.0


