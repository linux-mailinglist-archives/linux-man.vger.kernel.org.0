Return-Path: <linux-man+bounces-4619-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 36113CF2B19
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 10:20:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2AAA9300350C
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 09:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F1AF33031C;
	Mon,  5 Jan 2026 09:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yzfynhbn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D83A33033C
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 09:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604820; cv=none; b=Dy/n4Uic/eYS2icbCIIY8WcKHGz0+Y1sFrk6qYCVxeHH574OwnR4/qde7vDmx/dmeKdc3t5CRz22QLlasuG76PTVnmx4ug1Hr43fN+Zlh2K5CWAnjkIdoy8Kvk7US+kURsI+B+/Nu5AvhGVsM17abYCe0lYcSS4YtHIDQuBC6zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604820; c=relaxed/simple;
	bh=s/tsAOnxzL0reauXPhVwGyc1R+gg2uwFIFFOMz8gDP8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MwsqRcgw/3sSPoVHNzvttjZNxQz3Hi6fpORukxk5Sba1J6m4JYohi0++WVSs0eUxCOudXqZrDjO9xTcUR/BUgrb9l/aSnME/X2tie/ET6IanLHwiSPvzgSe3ig9JoR5NRLSofhGZaeTp/FgklMbcIGas0RbOW+U94qQm1bBF65U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yzfynhbn; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a0d6f647e2so225011445ad.1
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 01:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767604817; x=1768209617; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VHgksDRc2lnqxhzEN4BTbi9XaZNgFYsKdfyC4zSptso=;
        b=Yzfynhbng8Y0yMF56fh9Bn8pB1PzS21znM/a/Xki1IRSJY9JtHZ1PG0wmLbORiX7c1
         zJAPtFYN1kMaEkNeGoKmx2Ex7y2MGJEJ1yMPDA+YBakqmb7l+6PqQViDcLC9LubcvW3N
         AWQhmP5gi0b944C3gjYtlbV5nXVyqoggd/r76s1z8YjOge8cYNPEuRa26YUs6v+4RHvx
         p9uMI9mmrBNRknRpCa6TR4amTco5KW4ztzerbaKp3ZkLtwssc+ctf9RRUQ6OPP5l32Jg
         zx3b2fbsQ8eY23WmLoaHBU6rlDgCpTx0q4ygNooyq7NsUVjzXPMUUdwsLzpcfMeuv5fp
         pFiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767604817; x=1768209617;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VHgksDRc2lnqxhzEN4BTbi9XaZNgFYsKdfyC4zSptso=;
        b=WZLICX5sbXta0EkkLZOZOIiCXUrttNYvb9CRCn3E41m1PITo3oWvIcVqlXf1xR6pnF
         I4SjSRafm0x+T9YXT96XMwTn8JcP+djufV7sO7gC7t8paD95xRVsjd/s47dPcNh1W9q7
         vmx5rZBFaxRwLCfjzikSg0YyJqfEkLSZ2bNv42f20EYlaZIzuUWC6Fg26A4NpXP8EdaX
         DWd0OnhWb0rcc1+hiR+KIDTTkJAHfLJqtDxt6KL2p5qhlx1l4vAm1T4MGycWY5pCsh1U
         uDEs6vV37whOESzzI72keJnupd4pkE+o+VI68H6JlO/DrQAopF/cz14gJGDAYXKS9DmD
         qOLw==
X-Forwarded-Encrypted: i=1; AJvYcCUtv6K6Etvx43KiqR9VSSFg1//ikvOu5zfYQRmTIqCFUCbenPMCOb8GKK7MCOZNfPqcpthd5bmW6HQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YzKaW1rt++5PeWf1sqlWFJC6K9vh6mhtkKoDdu7zWlgOWMkmFHR
	lsXwm1Xw8YHIpAKFvTn8WZBk9u7p6TBtRcEzLrKql9HP64+9Dl4JSoWhmIvefL8p
X-Gm-Gg: AY/fxX5QuNvE0kwZCy6ecqNQfzD78qg3ULYQJMxMRoFm2e29bAMsMEh7zpXOpdnu9lp
	LANrbL7rBqTMedZbjUs3lSBcalauAq44Wr3CzHPmqL2gwLbxH1GgzUGjl2ELqRS1OwcCyhubGhu
	sVu6sF0fqe/KB/dAK31W3aRtCaOdpr3NGh6GkBE579kyF9lZ0lMy6UDxryMU2encJFy/igh44a+
	lMtUSBp9RGz/86JhtqmdwYIC4QTQn1vD6HHjT3b3lVFuqN1/WddejQQw43f84vEBqG5+P3gQJ7x
	LQ4lK26qEf0FbZTTIEsB/rpR9/GAceWIdAROmtR6hJ7WhXdMp5RjJCZsDfK8H/c/sM7fFbT3GTr
	MFq6ZIveJeDXMpyuBBhCFW/AI8K6D1/15e+TXTpbz8zugeebRJ8QSBBdwsAG5O3xoo7ibqxvXRm
	aipzIKA8p3KA1jAM9qM/pJ4UYSZH1x046RfsEGixtyWMVKj4/izCztQcwH7ILdDdqAZi9nPLE5T
	jolnMoEIhg2EukI
X-Google-Smtp-Source: AGHT+IHDN7CjR25tOtN/cfK1h8xe7yRQvdHZ8fSeYJHjEly5zx4L6RkVju5UvdJmDs9YoFkBIkFkrQ==
X-Received: by 2002:a17:902:db08:b0:2a1:10f7:9718 with SMTP id d9443c01a7336-2a2f2738286mr567036145ad.30.1767604817153;
        Mon, 05 Jan 2026 01:20:17 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-a8d1-55e9-3280-2b25.ip6.aussiebb.net. [2403:580b:5de8:0:a8d1:55e9:3280:2b25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d776b2sm446173565ad.98.2026.01.05.01.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:20:16 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 03/12] man/man2const/F_GETFL.2const: HISTORY: Update first POSIX appearance of F_[GS]ETFL(2const)
Date: Mon,  5 Jan 2026 19:18:39 +1000
Message-ID: <318b6e1e5d8a89b28ecfafc42794efd8a8ef32d4.1767599119.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767599119.git.sethmcmail@pm.me>
References: <cover.1767599119.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

F_GETFL(2const) and F_SETFL(2const) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Table 6-1 "cmd Values for fcntl()".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2const/F_GETFL.2const | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2const/F_GETFL.2const b/man/man2const/F_GETFL.2const
index c1b9413602d7..24b471e1f531 100644
--- a/man/man2const/F_GETFL.2const
+++ b/man/man2const/F_GETFL.2const
@@ -90,7 +90,9 @@ .SH ERRORS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-SVr4, 4.3BSD, POSIX.1-2001.
+SVr4,
+4.3BSD,
+POSIX.1-1988.
 .SH BUGS
 .SS F_SETFL
 It is not possible to use
-- 
2.47.3


