Return-Path: <linux-man+bounces-4126-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 36991BDB8EC
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 00:04:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D6DFB355766
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 22:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF20C3043CA;
	Tue, 14 Oct 2025 22:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlXpvRdk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E0622EA73B
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 22:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760479419; cv=none; b=uXYjvQffXC3/wNLmgAuZWrLYjNDFeA+Ut5pjWU0uGUZK4a/2V/KyxdOVFrscmGEgV04KvSw8MD8Q85X63bzDXG1bR19U/1RtI39W48u409g8WTBIb/Ho5iDcSzhBmltyahHWvGr6DGcQwFMjoffHj3u3W5WbTqBOeUjA4xIuFWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760479419; c=relaxed/simple;
	bh=SL8BUHgQ3BbN9+jguP7ytBZf24Vef2jyLwLJkPDngR0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BcTZaldALqEb/Cje4kB33b+mwKgujsJUaYraRprKNPo92OGGqQgR6vEWyy2A6Z0wNBuLmkhEKCd8ZRE/rvKeQwzPZF/DY/nC+drdGy7T+cY8EReHV4GsxEEF/pSHfoQkA/uISVcv7qXAZVlv8cAzWhT2+mW8XFyKenTBcVhtsUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlXpvRdk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CC81C4CEE7;
	Tue, 14 Oct 2025 22:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760479419;
	bh=SL8BUHgQ3BbN9+jguP7ytBZf24Vef2jyLwLJkPDngR0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QlXpvRdkOhDorkhptjgZtJHO2ZIbxAwJJ5spLhNFMvHDPmi/Jjipl0m91k17C0o1s
	 IPv7whdXIEfbeElBkokkf3VAl1vEaiKIZ0Xjnxr3KtIEfFwIObA7fKRRgqgxMABmV0
	 jYn9/HEe05NO1P9WEkL8X/G5e7ZULNKMGSPaHkhx79TRxLEzSYYQ9K6piIs81lr+m+
	 awj678OWsB8lg/bAogsJTjeURQECaTkV+t1dhpTuNRCdlaKVQDBfDhWB7wdyluerFb
	 KNFbm+HzY9MCCfB3blWRRTAowRGC1j0ORSamyRNVtu0lOJtQbE5c45aqxTMSbO5SFg
	 Syxu6tYNGsVFA==
Date: Wed, 15 Oct 2025 00:03:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Carlos O'Donell <carlos@redhat.com>, Collin Funk <collin.funk1@gmail.com>
Subject: [PATCH v2] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <d6392e0d35f2a76a4893334f55991e4dd009f42c.1760479366.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 CONTRIBUTING.d/ai | 9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 CONTRIBUTING.d/ai

diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
new file mode 100644
index 000000000..6054efc9a
--- /dev/null
+++ b/CONTRIBUTING.d/ai
@@ -0,0 +1,9 @@
+Name
+	AI - using artificial intelligence for contributing
+
+Description
+	Any use of AI for contributing to this project is unacceptable.
+
+Caveats
+	If you believe your use of AI is necessary for a major reason
+	(e.g., health), please disclose it, and ask for an exception.

base-commit: ac6f5c32b3fae7549c5a42d96a3273adc24e5023
-- 
2.51.0


