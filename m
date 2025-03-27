Return-Path: <linux-man+bounces-2659-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B4713A73D9A
	for <lists+linux-man@lfdr.de>; Thu, 27 Mar 2025 18:55:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 54BFB188EAC7
	for <lists+linux-man@lfdr.de>; Thu, 27 Mar 2025 17:54:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 105E02192FD;
	Thu, 27 Mar 2025 17:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=web.de header.i=radisson97@web.de header.b="DBqJ1iT6"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.web.de (mout.web.de [212.227.17.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8871FF613
	for <linux-man@vger.kernel.org>; Thu, 27 Mar 2025 17:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743098045; cv=none; b=ipr9BGgFJDcLFtm8Dj1tnuAdTvlmEomrC4dyAMa+PXFzODV6LvQhEcotfc5i26IHP6x/KHLzrM4Z+P6cp7KHeO5r3XrI2HknynYIBbJy6IKCdIi9QDwxzXtRNMtmtE+0tEkgquVv1nlFs3+OMbH8qnaFyZfiWKtFlUHjuKr28wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743098045; c=relaxed/simple;
	bh=eIMZuLTQ6CMNjiclfR6L//lzfnlUbfIkFNj6udIdacM=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=k6GKwt6Np9eH2x3tGz4VhdtpMUhCGqfK3l9U78Qy87GbXLdtg12YMwK6/5Ka9iwlRDSO6h7oSmgcXtlINvQN7CJZeIW57s4fq/35jxrzeuKPUFTa0Q+Xj6lTZXyfLp2BVNcigllgb3VS42luNASdbYC7wJdjxM56FlJhYJNu4lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=web.de; spf=pass smtp.mailfrom=web.de; dkim=pass (2048-bit key) header.d=web.de header.i=radisson97@web.de header.b=DBqJ1iT6; arc=none smtp.client-ip=212.227.17.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1743098041; x=1743702841; i=radisson97@web.de;
	bh=/pEXnTQMoJD6EvaYaeVpxt19bPioB3OCbqxFxp+RX58=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:From:Subject:
	 Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=DBqJ1iT6rEzYPsuf6UCbbjGyYsCXM5C4Ty8p7+atQuiVzHr0qfDTC+gmxPNDyOY3
	 J5PZa239iTSF7mXlA9PxWB2A7aTUtW/lgnWkIU7RzkIuzdqrQ7g1Y/oDRQCmH6QTB
	 PCIkOi5IGJ2PtjM6AYyNJxX2XEt5B0oFRapcbeJucGiwmNv79g5mC2onsm1bnDO4J
	 BjgKhsuSZeVC5f4zbf66xIGb/pU+oQSMTEvgWz7MxNKrNh13d5SaDn9i1phzEuvuu
	 68UKBXmH2+FT2SkmiD9VAnvXygLInztDFgTN7cUCQaGxYbAnuZUF5lcvvqRz3C7lO
	 daSZHc4N+nAOmwIyrQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.40] ([90.153.82.83]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MTOha-1tYg7x0Png-00NbuL; Thu, 27
 Mar 2025 18:54:01 +0100
Message-ID: <189ef077-18f4-43a3-9008-286a75e7bd91@web.de>
Date: Thu, 27 Mar 2025 18:54:00 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: linux-man@vger.kernel.org,
 "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
From: Peter Radisson <radisson97@web.de>
Subject: [PATCH] make consistent example in recv.2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:mHubkfT+e4t/yCalbpXEX/zrapipROCFAnbwW3dg6WR1SjvFIBG
 IiWBTMMLORv/fjRgKm/hNZnDaTZQx7P2OskjntjO1wP8jlKhyUgyhR+XV31rsR8KZz4CIJv
 Bi4s6k7vmF8TQfw3sMOGWBzTsl3+eQSnOXG2VW/pz49t6uS8EY2zGTrgjybY/LAbRqWTLND
 f7jF64YLf2BmN/+qKrXrA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:2WJZYNYeFt8=;YW/8dYHH3+OZwPa2KQXNbMJBcaZ
 EKJtUodp5BL+UaGAgyEtnXsqyV8hB9Qg6XGwy3K/69hQ+1yMR5vIDAAWEXLb8WlDGmnlhkPt4
 tiXLU7KY90cR5+2m/fMbNxmxFFVl4l2u3+Lp6GUOqpqyWAXOjhiohAdsU9AMUAZrxHnUBdTvb
 edeHhkwKmZ8MaC6vA6cAnDk/6asMllp+O+xni4R9QkocWrPTuDLEOXno23JbFfIdTTAfPEv90
 gJudbuh+Yr4HwsL+GcnbLlTGq9YrldCLuHe2XP3BPE+FbSFfyZ64ShlLXc9TSW2luoMZdtIAg
 ++tQ0zf3WGt7y+kKijgj/v3AMVSUCwBkcR7SBwtbhGb9RyGOi9VSV6Z3Rewu5vXxYKI8z6ysm
 G3MFcihLBDiFJfMJvUsm0mPfIp3x4s7RwXHnu7AwKRQfbqs0T//gPncGr0Fo3rP62X97r28Rx
 hS9LIuN31sR8nAJPkbYV6sTA3V3tR4/LmLwe3k9JrH6HvL5rKV1DKPY7hrpOvivFNWTKEAyt4
 Tx0tu1PrVQBzmdKRkM3ZpndZI1cIazJm2Wf8uZA5YCFJ9ASVjO/M+jtbgM93ZpSnIweeAnflt
 7aPb7q9KtbdrL4mwGmU+l4d2TN9QQRUgrEOsVAyU6Gz/u94F4ykRj1m3Ea/Ye/GooQtuubLpE
 v36MD3CDd5okNz3EocTzm2ban+L+n18NXWpcs3wBFNfwTogvMAwFmy1YpAwVGNP3NiQd7QNRv
 yA0jvYs5n+E4dMMHevxZhdLFlwD6FtIjs158wzLDJbTH5rWpFLpQ0hWjV0zX8f36J1Hjm7ShY
 K616m+mcLLubUo5F83W0xNunM6XsbT3FgcKxgo4AJNkGomklU7rub40KY75LZByRhVefdsJsr
 3x+rKU9/O2EaqWWXc6g6LQv/7qritE5lZ520HqU3x1cv4nMwnMjw5yvn90P1tay3+zoT/Q6O9
 z8LKT7vREOr3EavChzs2C4mMGfurclazr0ADKnVnfcpEDKrboCgEN9ukcCO4TeE5NpXCCGsX6
 uY28DOxZtKGMK05ZX1m781vj36kXajkjWTluZNLJ6AHLuL3U+Nt+WOJfYwmg9ataZUWGiBDG7
 3PxYhM0IDfpBbmeb1uhwR7gJuICjqvIoEoxSqITwHmcp/eDOZMKAp6UbzRM1RgnnQdgF7dBvN
 pn/Y0zNdRLRhB5O3k3I6bixC+wioiphfhZxRUCAu5QAc5KWX+kPti9gS+1YaO4HUQVpo8FAZF
 4yTn3ZLzVW/5QokFOeH+lqQOi7uaSR44m+opW1gRf2fnASCW6xeOsiLXJFgyVz0VVv5Ax244p
 SJ2wxfJw4oy9S8JP8rhMhoek7aYoogIv3vk22sFrJkOS9Y9YbbKRwzKqiTeFlXuGb6ah0i2b9
 j9aaePClB+duvWlXaC8UPcWOyVz2yDp/QinzVN419FHNb+7GTVZm0QFVvdAM4Rrp4ysYREVJA
 esvWoHo5mEO+u91MhlkhZsl5KBvI=


Replace 0 with NULL als in the example a few lines above
=2D--
  man2/recv.2 | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/recv.2 b/man2/recv.2
index ba17d03a3..21f65e86f 100644
=2D-- a/man2/recv.2
+++ b/man2/recv.2
@@ -325,7 +325,7 @@ socket (see
  .BR connect (2)).
  It is equivalent to the call:
  .PP
-    recvfrom(fd, buf, len, flags, NULL, 0);
+    recvfrom(fd, buf, len, flags, NULL, NULL);
  .\"
  .SS recvmsg()
  The
=2D-
2.35.3


