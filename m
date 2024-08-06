Return-Path: <linux-man+bounces-1577-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B530948C27
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2024 11:27:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FAB5B20933
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2024 09:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B73571BC083;
	Tue,  6 Aug 2024 09:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fi.muni.cz header.i=@fi.muni.cz header.b="e9cjq4iR"
X-Original-To: linux-man@vger.kernel.org
Received: from anxur.fi.muni.cz (anxur.fi.muni.cz [147.251.48.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A22E1607BD
	for <linux-man@vger.kernel.org>; Tue,  6 Aug 2024 09:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=147.251.48.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722936417; cv=none; b=LbNB/2wsVt25uY4Cp+OuSVesp7H1HGGIiaoZ/cdKEHWp3VjRJPwKaDJrtFJZ3YeXHg91jWG4xljs3jmA92Bq4coT00trz+trwIFV1iW/JlgS80GSVvAjd4A+BQ3QkjQfDEQfJs0UMUAZuPyXFGzHdy3Ji9yndm/rJjUITj+jhns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722936417; c=relaxed/simple;
	bh=NKUemVNN5/RBpO4/JDljkRyLkOSuZdOwe8m3Sfj0a+A=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=WcjiFAWLmQT5a7zerTlOvm7AMaiwwDX0tkavaIyQNs0cjXUl8uUn4p+2MusmqwtF2jYXMlbiC7IlPm6Tg5KfASjT2rszfxWDGbq2P1lYSi7Z1oVo1NebD/PSs1j+wUbZ+N1ccaqjZio2yNBqWmw7OGvTDpnC2O7Qjsi62Rc2/Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fi.muni.cz; spf=pass smtp.mailfrom=fi.muni.cz; dkim=pass (2048-bit key) header.d=fi.muni.cz header.i=@fi.muni.cz header.b=e9cjq4iR; arc=none smtp.client-ip=147.251.48.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fi.muni.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fi.muni.cz
Received: by anxur.fi.muni.cz (Postfix, from userid 11561)
	id 9C5B560953; Tue,  6 Aug 2024 11:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fi.muni.cz;
	s=20230215; t=1722935972;
	bh=sY6TPiJjKYLLP7t13EzKQZqe/hb+4nhTeRZgRMTYQYA=;
	h=Date:From:To:Cc:Subject:From;
	b=e9cjq4iR85v6onBPs+WYleAynY/JBpSCLsH+/omQ+FyubrtJQ/FJqyQeE2X4zpBQr
	 Y/JHfScMV1rkmSrLfr7dNrbwNWoWrrwtdLwv7qHj83nFCSz3+7BPgrB7Zj3E8ngzqP
	 PcvAx8EGswtNfboxI1DJKNnKo6Ddo4aUqelG1v01XbGVhPdPnd2a8WrOV0v7a5Ij63
	 ZJO5KH3XU9LJef8c63SGp8m04eCt8pGYqah8OsVppBlTFjd6xxfXeAWZdMFITTcWES
	 dlLfB+SpxGiUdmyfAWDS6r6EX9thOwVcrsJYN5Z61TJ5DWkQPi3/YpzZ9P/tSMG8OP
	 yBHoj2lgNYTxA==
Date: Tue, 6 Aug 2024 11:19:32 +0200
From: "Jan \"Yenya\" Kasprzak" <kas@fi.muni.cz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] wfix: accept4(2) SOCK_NONBLOCK flag
Message-ID: <20240806091932.GL14471@fi.muni.cz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The description of SOCK_NONBLOCK is a bit confusing:
"description" versus "descriptor", "open file" instead of "new file".

Signed-off-by: Jan "Yenya" Kasprzak <kas@fi.muni.cz>
---
 man/man2/accept.2 | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/man/man2/accept.2 b/man/man2/accept.2
index afc04603c..65a56e37f 100644
--- a/man/man2/accept.2
+++ b/man/man2/accept.2
@@ -124,12 +124,13 @@ The following values can be bitwise ORed in
 to obtain different behavior:
 .TP 16
 .B SOCK_NONBLOCK
-Set the
-.B O_NONBLOCK
-file status flag on the open file description (see
-.BR open (2))
-referred to by the new file descriptor.
-Using this flag saves extra calls to
+Set the non-blocking
+.B ( O_NONBLOCK )
+file status flag on the new file descriptor.
+See the description of this flag in
+.BR open (2)
+for details.
+Using this flag saves an extra call to
 .BR fcntl (2)
 to achieve the same result.
 .TP
-- 
2.45.2

-- 
| Jan "Yenya" Kasprzak <kas at {fi.muni.cz - work | yenya.net - private}> |
| https://www.fi.muni.cz/~kas/                        GPG: 4096R/A45477D5 |
    We all agree on the necessity of compromise. We just can't agree on
    when it's necessary to compromise.                     --Larry Wall

