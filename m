Return-Path: <linux-man+bounces-547-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4B4873BCB
	for <lists+linux-man@lfdr.de>; Wed,  6 Mar 2024 17:13:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C2881C23092
	for <lists+linux-man@lfdr.de>; Wed,  6 Mar 2024 16:13:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B4BE131749;
	Wed,  6 Mar 2024 16:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VT9d4Q0I"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFBA134733
	for <linux-man@vger.kernel.org>; Wed,  6 Mar 2024 16:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709741624; cv=none; b=sqw0iC+jjjXfXwg4nX9E0zULikpljJVhiR0wIAwOTSXSh3J6dRyk5JAChF9LgsMPRT6EWqj67UJH/oGocDdAwu0mylmTNyOAidSXj0OB4fjjwQpzpZ6R7FSp90m/grA812768VCJTRQAnDGmjnTTK/fWbUVrYkw3VdBL+dgg2FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709741624; c=relaxed/simple;
	bh=eVLhuoHoiF5FYhRRPOK9YOhhtnToGs4v2FoksKed/GQ=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=cQFnecbTPNVLO8RowVVNLnaB1r9i0k9FCVzTijqnNAcYlCQwCR8smCvMPor83EQWtzgm5r1FkPgDM/BPWvACaEbri6a8ViC//bG6djfWTD4sYq3pdGT3+8JPoVVUCGjFcfF2QnivYgokzjspWcrG00HwVIoe6PJ+pdwFP1ofvAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VT9d4Q0I; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-21fb368b468so670967fac.0
        for <linux-man@vger.kernel.org>; Wed, 06 Mar 2024 08:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709741621; x=1710346421; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=a3/Xml8KL1UeO/WbuKA32RL1G1V6wSSHnRtvUKOo3BE=;
        b=VT9d4Q0IOR9yG+rYV0/KuO1D/TbFe57c5Bdt326yG2UAp3T5K7F+lwDvuxZOuiVbpv
         Lx8BM/ggsFtFWsb2vvNi2h/Ck6XQrktOS7dZ7IqgUgR31hTKXSDdCpntz5OrPLIfMpV9
         3A8QeICQlCWjEmpt95wl9FJFoiPzQihz0Qc414oQZclhFFt6C5C56NeYx1Bw3gLpRToi
         d2jVTU60RRCF99cCEyv06eQ2/POXgEv5GnjAvSsgi2ekIMYAQ0J9iXRFKuKV/dzt/QIw
         OfXqG/YQC8zuD0w7Fbpw7Y6M0hJIGaZnkFTD2kP5M0NdcVaK0AmfW81kR9qqsjyf41S4
         MWRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709741621; x=1710346421;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a3/Xml8KL1UeO/WbuKA32RL1G1V6wSSHnRtvUKOo3BE=;
        b=DV8+oPmLL5Ma+CHGZo2SMi123McvFtAmJqTm7ajvXbWoMxxfgem1ZWGYlJj6rrmQ7S
         ss2iHh6jS4Hv5xamfm2/rRBjrmgaaRnrtpmG/lD64tQ9C5U/iZOHBRPDCA3/MC73ASGq
         T/sN6Q9Mzb22QfkRjHx0Pk58YSv8HgxJvZr2kceFqRgsUHiwWhaaDSdMqt4JhB9Ob3vE
         EVLLWsaIaBpQHWVS36z7tbQ4EnycJfm3N+tC5UlYPadxAoJMrlU81XipEiN/tq2dCrNm
         wopjxJaJUti9CiZ/fQ2vEEBcleUDRuxoFCVjx2fLV1AMGAQitd0uRf1pzcfsX52g8tBf
         mi7w==
X-Gm-Message-State: AOJu0YyUPFIadku8rBfIPJvJYBxm7DtXePyRcAym4ihj0zxpZ3cPKl2g
	gV7K1OLSNKaYRRzcquK8+VAh74QngjmbSVmhfVDnhwq0PJOwrQBKrbDi9VYzdOjLOor8iZM28ti
	jwVSahrn3fjXv/p54bBjVYf3QJtq6Hub05qw=
X-Google-Smtp-Source: AGHT+IG/m3lu57rBKlcmV0TXXPfHrlIylKufgO8s/5WbnsQFPYVZ6XQjABRlWZnn01ENwWE7aBwu8elqPbzKJAoU2Kc=
X-Received: by 2002:a05:6870:b010:b0:21f:dfb9:c150 with SMTP id
 y16-20020a056870b01000b0021fdfb9c150mr5616311oae.54.1709741621721; Wed, 06
 Mar 2024 08:13:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Fedor Lapshin <fe.lap.prog@gmail.com>
Date: Wed, 6 Mar 2024 19:13:31 +0300
Message-ID: <CAJ_gjBp=_zdy3p3HdWSDD9XHexfNznhwSSCkASe-c71FHA99wg@mail.gmail.com>
Subject: [patch] getgrouplist.3: tfix in example
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

In example of getgrouplist, if getpwnam returns NULL, the program
exits. The exit code EXIT_SUCCESS looks like a mistake, since the
program also calls perror right before.

This patch changes the exit code to EXIT_FAILURE.

Best regards, Fedor.

---
 man3/getgrouplist.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
index 41389b6c3..239913ce6 100644
--- a/man3/getgrouplist.3
+++ b/man3/getgrouplist.3
@@ -165,7 +165,7 @@ main(int argc, char *argv[])
     pw = getpwnam(argv[1]);
     if (pw == NULL) {
         perror("getpwnam");
-        exit(EXIT_SUCCESS);
+        exit(EXIT_FAILURE);
     }
 \&
     /* Retrieve group list. */
-- 
2.34.1

