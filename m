Return-Path: <linux-man+bounces-58-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3507E9363
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 00:52:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A44C280AC1
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 23:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DEE41BDF7;
	Sun, 12 Nov 2023 23:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="EsVuToEJ"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F085F1BDD6
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 23:52:29 +0000 (UTC)
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34D6C1FD7
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 15:52:29 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 07F4D3C011BED
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 15:52:29 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id KqbkLmTYi0Vt; Sun, 12 Nov 2023 15:52:28 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id C0CEB3C011BEC;
	Sun, 12 Nov 2023 15:52:28 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu C0CEB3C011BEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1699833148;
	bh=8UVf14/ohv8v6CSaYxWFqQTxR34RLFNlmiScS01OM40=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=EsVuToEJOtoSCDPcl5XoP+MVOcaqhgor+DHo9L7qeX0JA4MjBkyf3WpDDXuPsZJEX
	 Wo8IQun4AvTv9aUmFhwzjkR6kKHyklTLc2pNvFicWEsQQEl6U9cces2pviemJUmBkl
	 6732KTM9aCKft5qx+BfXfs0T90+lDZ0rxJwqUXle9BedxWkaRpjOwa9W6YfLmMGXqE
	 9tt25gsPGA7/JD5AdFzhu+tRuE+B8mWHMxK+y2qkCwsT+kzrauxNrb6gO7ctcOfTfE
	 doi5raTw1G0XUUe1Gbd8MOCSNFVurgbnTMyPDE4sLBib9fWqo3cfabXA4bMJUfXdQh
	 OXnOMV0nd6/2A==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id ELDPdrBq2wrj; Sun, 12 Nov 2023 15:52:28 -0800 (PST)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id A54573C011BEB;
	Sun, 12 Nov 2023 15:52:28 -0800 (PST)
From: Paul Eggert <eggert@cs.ucla.edu>
To: linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 2/4] string.3 fixes
Date: Sun, 12 Nov 2023 15:52:06 -0800
Message-ID: <20231112235218.80195-3-eggert@cs.ucla.edu>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231112235218.80195-1-eggert@cs.ucla.edu>
References: <20231112235218.80195-1-eggert@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

strncpy=E2=80=99s src need not be a string; it can be an array that
is not null-terminated.  Reword so as to not imply that
the result always has some null padding.  Use =E2=80=9Cbyte=E2=80=9D rath=
er
than =E2=80=9Ccharacter=E2=80=9D to avoid issues with =E2=80=9Ccharacter=E2=
=80=9D, as
not every byte is a valid character in (for example) UTF-8 locales.
Replace =E2=80=9C=E2=80=90=E2=80=9D (U+2020 HYPHEN) with =E2=80=9C-=E2=80=
=9D (U+002D HYPHEN-MINUS).
---
 man3/string.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/string.3 b/man3/string.3
index bd8b342a6..4037fce47 100644
--- a/man3/string.3
+++ b/man3/string.3
@@ -185,8 +185,8 @@ bytes to
 const char " src "[restrict ." n ],
 .BI "       size_t " n );
 .fi
-Fill a fixed=E2=80=90width buffer with characters from a string
-and pad with null bytes.
+Fill a fixed-size buffer with non-null bytes from a source array,
+padding with null bytes as needed.
 .SH DESCRIPTION
 The string functions perform operations on null-terminated
 strings.
--=20
2.41.0


