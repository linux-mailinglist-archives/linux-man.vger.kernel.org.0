Return-Path: <linux-man+bounces-2654-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C724A72E43
	for <lists+linux-man@lfdr.de>; Thu, 27 Mar 2025 11:55:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EF3C18994B3
	for <lists+linux-man@lfdr.de>; Thu, 27 Mar 2025 10:56:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 665BE20E310;
	Thu, 27 Mar 2025 10:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=web.de header.i=radisson97@web.de header.b="wgcvrsn1"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.web.de (mout.web.de [212.227.15.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5360B20C497
	for <linux-man@vger.kernel.org>; Thu, 27 Mar 2025 10:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743072954; cv=none; b=i2BLa7xYnXeNC6R9fhYJb6oD2+xsLM4JqWw6Knd+gndDIzv8WDnn44QTfoGcyIbnEzHpuMXXu8qB0bAqZ3gZTl5IBfbF7g2JTFBb40uDya4f1/gwc4/4VslKpTlmHrxXg8cl0cV9Ll7hGSVw9DxNDzJ6kiweidTDc2dvZMkz9OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743072954; c=relaxed/simple;
	bh=2YjaoZAB2b4kLrSS8zpo+FrE19MiZbJGFb+03lS4YZY=;
	h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type; b=Q6iiBdLS5DkOSVqGIBnBMPAFjklvTL1A202I+Yte/xqbHettB7ypC/yKifFU/JNMq1vsBXySUjYgmpoMYUmBBdEcVyk4L6m8hV10iKNW85fQ8WICNE7ceRzrjMETzWS5qrIIZb6d4CCcy3pMYjB4ZbilaeBk+hFH/iz2qaRdwa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=web.de; spf=pass smtp.mailfrom=web.de; dkim=pass (2048-bit key) header.d=web.de header.i=radisson97@web.de header.b=wgcvrsn1; arc=none smtp.client-ip=212.227.15.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1743072948; x=1743677748; i=radisson97@web.de;
	bh=hsyuG2Qddqmy5FTEZLkGCyFBZB8+cbJJmPAtXZZ8gA8=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:From:
	 Subject:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=wgcvrsn1LlL7GYtp7No4Yvd3PFtNRVSIvUmOUimGlKY2xU2xLQKcupGemIRWkSVN
	 r0m6mx3TVn4XHVvIer4MXjSp9GP7WKDpa0/7qyR/mwKDGMTHfYj/XxHiOwH5KdLp2
	 QkYvrNqZaIsK4HMw1uRLgH7+OewwCjWHdDUXByfuVrqLMrxo1SLg2o2UW7OHxWPcH
	 URTs8cf4zDE+MocN+chfOUHyH29DJ1b92DlmE1zlx8dlo5ikE3pt8nBAYmyKAYByz
	 EhtrjbH6VmvYxm3csiDTmOGCe2zbfYTqORwOGM1Jv3MFhi7qSkNPoHM1NPttXYnyE
	 uI3GbdDp8enMBFab4Q==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.40] ([90.153.82.83]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MGgNS-1ttt0I3R7i-00FVFI; Thu, 27
 Mar 2025 11:55:48 +0100
Message-ID: <5449c846-e9ff-4c4c-b161-485da08a578b@web.de>
Date: Thu, 27 Mar 2025 11:55:43 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: linux-man@vger.kernel.org
Cc: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
From: Peter Radisson <radisson97@web.de>
Subject: fix: recvfrom() error handling
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:SyxwazCmQKf5gG7nXRhZo9W0nsoximFLE16+ahnpzAXWyK+1v4z
 9Om+3rDxZEeWpkRapLEjhseKXyNA3Iy6PCbV7e5xzslFRBso8CC7CF7hlYCNmA/BocagZ9D
 CcfxJWDPpf30A02llpJfS4XzsS3rLrdOd3DBefu9ot4DI9KBD9lfVLZYq5Qr3kNxqq8kG9Y
 LsJ8f7UcP9hDUc/jkYK1w==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:aW4nyim5WR4=;yGEeVOsmDgNVK1PNLGWN/drXDpQ
 wsXsrkJf/5Ua/0gBtvxXhp6eW7bN3lhhmeK8PCu7SPJ8SBVxndO8rEWIywCU35yoOTeKBfD/v
 RkcnFj2ij2XrajXog8oEqUVnkx2vGP2VMI8dkxL+iz7LQDNjJnHtmxuSFZcAkWZqpB98afrzB
 Cc4b7dqaIlfy6rPFPQ0Cqoctj7rEailYBcVPh+XWsgUBT7w3sqqBD8vofj6Nf8qKh/twGapUq
 Xxt+vUUhSzdTLGsO/mk3RArCdm6Xbs5Bw7w2KuYHKwl+MwGQi3zIv5sifomrMrL/76Le7fNlR
 eu2QNoH2RUBC//kX/EXe7N9Qq3oYHOrF2vSjoTa1m6F2BXaW5f9h7mjf5w/10EiW7o/Zy7vcZ
 7XQf0rcbsg+3qQGERip+Jrw5X7NmNBNWbz/bdfH8EY0lliw5TrSMZUxeGV5XHmK1+JmF29uhe
 gCDtqfqpGR5OKZNDGPP5Le+dHAEsQBROwZXxkKJx7dfqW5KF14xaowJp6shOBZiMMELFYTJtE
 A9dSYVS9RZKZ5MHvEV4beFjmDt0c3zpPC5e2TBi++psq9WjPrP2qwktbUnTh60GRr/h4suxee
 TJqVpMBDeml3Gu891wrtDiFy8/1yurTxcitA1Kggbo0y/CfXFkbtRX+XEMCfXGZlvURqH4Blc
 QMKPIOTb8pTCp9sn4pdihOe/dXnSPOTfVer8+eQ1G0Go+7lihsiWEH+TOHFLK9F7kbPVDbZ+l
 QjExmdwiiOZBPyjt/2AAWkTFMf24nD1Dt7AuDGyCYLzoe+qGLhqZcwaEKeIHVtuNDuI88H6YU
 pKhCjPZt7ugQnK2jaT8Hx2ZWyESz4DTVZ57NjbEH9U4Hp6Rk3tkD0TuYEXzsnqkfFmm/8IBN9
 s71mCz0hktc+bz27xlYZn/I+H0IuM4AnZ7oXkEYtnhg9D8QR4C7EqDtMw5wausvrQ1v35Y4Jg
 5H4FeNpcxsvbwD6GWr8nsarEBKd+szta55m1XSMqDHAm9Oqx+NfnZpg1NWi3lDJ5cOBPk+NUf
 r+Op3FGL/hiFhN1FDICH4TEC5IkUr5CKX0a7gPmHvmUYg+SCFErw0jeF0rmacKIGYsm8xFNzx
 gnKY1yuTBQIugY4sKK5UIQWjajgb4Mi4nbxdQMv8RUWVboiDwXbqqLtasgxCLySLJsviUH9Qn
 mzCEeqgxRWlbqPJPalcHfa8DnFF5qemsi0NnYYJAcqGPoHkkga482nYzSvsNIfxaycw7N5imk
 sm6q4Z+LdivD7U6by2p/02nQC1E5d/rKn5FUd0EwzRnon4QmDBXQIvvIyj5gFUd0YIyaUOuEX
 g0XRLcyszHJu+GiK028fI+lHXqH58ftdecNcLzx9kkFpsdYW8udPI/Nk9qLSmLbVaiyLIV92c
 i46w/aOtpUFBBHSuNWWsRhwkcu8GosYcdMxxILz7p9lXDvU8frLD0tTN6bAy0CVHPvIIpIRf2
 RsQAJ1Q==

Hello List,
while chasing an unrelated bug i found the description of recvfrom()
was missing some error description. I would suggest to add a few lines
to make this confusing state more clear.

CU

--- recv.2.org	2025-03-25 21:55:10.914273000 +0100
+++ recv.2	2025-03-25 22:55:18.843789307 +0100
@@ -299,6 +299,23 @@
  and
  .I addrlen
  should be specified as NULL.
+If
+.I src_addr
+is NULL
+.I addrlen
+will be ignored.
+
+If
+.I src_addr
+is not NULL and
+.I addrlen
+is less than null the call will return with
+.IR EINVAL .
+If
+.I addrlen
+is less than sizeof struct sockaddr_in the src_addr will
+not be modified.
+
  .\"
  .SS recv()
  The


