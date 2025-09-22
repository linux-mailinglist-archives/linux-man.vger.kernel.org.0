Return-Path: <linux-man+bounces-3933-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAF3B8EA79
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 03:10:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7711B3B2180
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 01:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08AB41552FD;
	Mon, 22 Sep 2025 01:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H8ZoIfv9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B16414A60F
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 01:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758503444; cv=none; b=m5y1KvZCL3sibL+YY1jID/SlVkHK6ametYUWOaQFoV+U3Qf13zjk7pRX0JvP+PZZvq6Fdn+P/BQK2X2CsNTkBJ4wcXd9ILG3LfSwi8W4qYyT4Y0W0tOnM3GxTV5pPzrCEmVU8by75gO1ZpvQjLkNDDp956v0ylcUvhBYTgzkvYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758503444; c=relaxed/simple;
	bh=M5wz9xqOwUfHtDVvMp9nzAi5BBDdS8BQxS9fvLMQ0nE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YgdCfI9JNbpzhovVfV0PE9qEEOkrfE3tuVyrWfAv61Pv4SQ6vBpwT9ADIAYwSb8yIcew2ZVMMxg885MUDCuVsgGzN/Yy3BeTaQ+Fw7XESFctWrNGT3cIedvWeHWf4tEgw5Jxp4VeWuI+u5RQrgoGOg6tTD6UEv4448C2h9V2Z2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H8ZoIfv9; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b2d92b52149so17384266b.1
        for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 18:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758503441; x=1759108241; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8MkJ7oUnUH/4XWT8grjBfyBKEOMi6atBFTqk4gqmuuc=;
        b=H8ZoIfv9DSR1/hp6JpXytlIGxWeyxbDOAgZ1ldhM7onVV0tw9ZOLtFyVaywrJxmn+j
         DDSO0l47Z9Qeoi8mnW2W8tJS0CDzx/NvkJVhlimIf6QKIIJ+++gy6ddVxb/s9NO0pzpQ
         ohzmZRk3iuXgw3lFYA7H+h1WxCaY5OLsfoBZL70HL44Q89ZHURlpvTdsndiUplxTVCho
         fAZyp7KXHYeyXPjrdAF1vn66OXoDvfbpVzF8dfzqdB2GHL+PlESDX9nsyW3SCBpSNIgT
         mc6XdOXDZ9DtNg9H3iTRCIgrA3VDrI7X1OGGvN8K5Dh5Y5kKrB47Wt3Bw++oZqh2fGcQ
         tCpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758503441; x=1759108241;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8MkJ7oUnUH/4XWT8grjBfyBKEOMi6atBFTqk4gqmuuc=;
        b=N+Gh36qLd+czOBpxtE6GCVQRU+ki37TL9ghX3eFbuTxr+AK/jhmPAzyRPzcDvH4Vth
         QhNskj0ILOD/Sn5yhOQ2nyblX4n2Tz3gmnpvK//Z67Q5EiOCVgYjhxyVuFJ4h+KhBDno
         naxPPOskEvWPxh+zdb4ClbSnXa7T8QqqbHJF6QYjfkuC7mNOqcnSqeLcQySGBV6t/0EF
         CCmTl4ecpgPaXdMw/C39tKAhTDk2j7y+AkI6O4fY9oaE3b3RUI4V+11niloPbiCkdLnr
         NWjt3DDewkbAY+zmpzDlhmcXABrBwr+RoTVTH2U4AJjJy7pd0a9tcRZiVJFaVbSxdxqp
         tChQ==
X-Forwarded-Encrypted: i=1; AJvYcCX50o6Wt59CXOnnWqsr9vAYfrvkyFNXDAFUZHQAmMGJZSkzU+yFK4biEe0/0oDKync34cAP1u0QnEM=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7Hx/FLrtEC+yuK2L7WA0aRvhcLawI7zWiQzg39zJfr1vFLaXx
	UvJKb3cU2YzII9DLKIJWZuZoFv6N9TLhY4Eb0PBbtg6KkLZNdg/ECAjE
X-Gm-Gg: ASbGncuHXrHMPtuSLfpy3hTdSD4YoI2SV94yHawkyQCGgSANBIX6KgWrsv6vZfJhcKV
	5q7YU5r9jrU10Q+HIAeXEnCR6J3HJgg18cThdFAr4A8Q64TueUiYce6FuQUk2jm//qwocbO1vjB
	XD0qLQnsyAX+6hnuLLpQXXWuTGcRXTyS2/RmMgDm0Qi6AGKJnIKeXFrXjcZvZex/D4G9y6FU9sn
	8amZrqmv4avIMDiw4dW49KsiiWU6CBj9PPRS0lmyJW/XU9tLkqhvZJZreiu/aKo9VW5G5aSZiZx
	EHdQ5pkvo0wr0ItBDSz6vXIjulGrSXkC7QL19Dcfri6x4TWJ00atnl1Sbo/EYy7Gix0vv5j7Zo/
	lmfl7owZ7vM+sTy9hjuM=
X-Google-Smtp-Source: AGHT+IEvTen8ntQeNOQqNFT2eKUrH0+zq+HnLQQTKn/Su0UVk9XUetSFBmS6KjUaD9cJm9/WF53iGg==
X-Received: by 2002:a17:907:d0d:b0:b04:6546:345a with SMTP id a640c23a62f3a-b24f442d830mr1120956366b.52.1758503441503;
        Sun, 21 Sep 2025 18:10:41 -0700 (PDT)
Received: from localhost ([212.73.77.104])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b1fcfe88bc3sm956702866b.51.2025.09.21.18.10.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Sep 2025 18:10:41 -0700 (PDT)
From: Askar Safin <safinaskar@gmail.com>
To: safinaskar@gmail.com
Cc: alx@kernel.org,
	brauner@kernel.org,
	cyphar@cyphar.com,
	dhowells@redhat.com,
	g.branden.robinson@gmail.com,
	jack@suse.cz,
	linux-api@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org,
	mtk.manpages@gmail.com,
	safinaskar@zohomail.com,
	viro@zeniv.linux.org.uk
Subject: Re: [PATCH v4 05/10] man/man2/fsmount.2: document "new" mount API
Date: Mon, 22 Sep 2025 04:10:34 +0300
Message-ID: <20250922011034.96618-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250921230824.92612-1-safinaskar@gmail.com>
References: <20250921230824.92612-1-safinaskar@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

> MNT_DETACH, not MOUNT_DETACH

Same for open_tree and open_tree_attr

-- 
Askar Safin

