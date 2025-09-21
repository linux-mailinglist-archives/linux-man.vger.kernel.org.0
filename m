Return-Path: <linux-man+bounces-3930-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8196FB8E95E
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 01:08:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 459253B845D
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 23:08:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 257A6275B16;
	Sun, 21 Sep 2025 23:08:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TpBxzyam"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D501245005
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 23:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758496111; cv=none; b=nxoc9TXZM/Sukt9NYIQVzLoHPe4i1AVrEtZGa0f2icGKTowyGU4Mg8CFNTM1qSKwwj++b1FzY+m5+TA0ybf7QNDj8CXwzHvhZfmVlMxDDC45aOn7tt5QtNtUdj32GVc71mdLL0GX9B+yO79V3q90LYqahzFi4PpXMpMq6z91sbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758496111; c=relaxed/simple;
	bh=kp7sTRbvQCXDyuEv7lCMhx18j8NoJQstWz5bEdlO6i0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=h7wzzObZmqpwUvax//7NGT+FeedWAFuHnCBwy9wQZYRZKGrbugJxQBKZfjnaagsis/Wu4f3FMez6IgU9VTNToEQqrz33AIECvZBvZd74LzvCjz9yRhTTMQ4ijrqnY6dDhsq/fJRz2m9+8dseSV4qS5iRma1jmEOvJJ5iTgsEOJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TpBxzyam; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b0473327e70so712744466b.3
        for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 16:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758496109; x=1759100909; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6tuSy0V0l07vFSFy9Q6h9CIcImr/SidadizJrDYoMvw=;
        b=TpBxzyamd3UoBsYuC7Kxvt8fyDLb5JWbAeYqjsLW+uE1kscQ8YDM0fE39a+IZJDj4p
         6FvQ6J3Y9eySk9poPZpSf5HrlBLc7dNhHUKSdTp8xGK/btqZtp8G55HthLKgzS3ivoJj
         CzHvMqA5TGUHWXoUCxHUAo7gse9eaK607GuXpAJ9SQijVj9/jvG8RbYJOe1v71Yrc+0s
         /VUNWWm8Pvn/qO7nNYSnXwK77iVE04NvWL/q5uJlMBRDVx8CA/t/StpdpYT2Wr1iuaGV
         W3fpq3NRoVVvKT5BzBBS2z/Nyj0SOCRRJ21eckXkrz59rmoZQdEjRDqadKWlgOkQg8ny
         lpgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758496109; x=1759100909;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6tuSy0V0l07vFSFy9Q6h9CIcImr/SidadizJrDYoMvw=;
        b=j/s+bhzwncnpupPu4pGrks60sMptsthf1sVf1uNKBdsxI04pY4+vsJRj5AvanzNTq0
         tw5RCaUr1zyWXkRJeVrsm3xL0EIq6eDnvteKNNIIVwFmA3rpXEepY9A3C/EAlgqDEbQY
         l9c76p1xsGgM38b24YOp3BcZtbq3fQ0w2Q/Kt/FGuHZVaqgjvkelcW4bqGkKilzsi2KB
         Iex8lMCwckUd+H4Q6nfSi1HIod2fInR/ehY+Hog5Nip9v98h3UJ3Hjy8sHTXhmElNdS5
         OqKRi60ZKruQRABzvZsXL4n36FbQIC10F1Cw5l/ppRa/pvXm9CxjyACUllyu9Iva9AO4
         irIQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmh+/q0TEv/pTECCK+sLtQMdWBB8Q22NoDdZxm+FvCJk60boL5k+OniTX38671r63Mwg8sHWW+7Rs=@vger.kernel.org
X-Gm-Message-State: AOJu0Yziljpe4t6uPC/mqL4OE/+LUSsRqjbLm18A826j7/NVq4oif/FD
	jnKn8Lox1e0FENbZD8oCoOlxzeSVdYJyfaSjXALbRWcFsS5+3H91RoFX
X-Gm-Gg: ASbGncvznrprZXl26Z7pvGsg/Ri2gbAW/mb50eyrRIxdyc1h4J/kiJXkGvMQmjBzvAd
	xqH6sAM+p/vULKot/9jTvQ5DEuEY10XDbOfEKQ7cvMs4zaLSn03zjXNlJmbE3g2QUA34Ifpd/XL
	xeDmYp4Xdts1TGu+JtxsTnFkBAXiioS4tzrMGIRzbS0k30scfJDUQFz0jsUnMaxW4grVk5C6Vb5
	PRUU7ET7FOexath7f+2/SBYjAIDOufBnn/wj6w3p9EOxdkTBvPaK3sWqU8XG5vxmXjAPvDp2KOI
	RXUI3pZ3gJWibVWaQVCgtuWxq1GAuO+JgXXjPEKzSOOuI+NgaCN+Vdz1Cd44EhYXK8fAuMlNVE1
	4w317vTc60gUDJ9VNNKI=
X-Google-Smtp-Source: AGHT+IGaYL0rZYaG01O9JWNyxpX9QMFT7dX6PEZPc8o/39RX71pF0AyzIyHiFTeTuo7PDhxHHUV32g==
X-Received: by 2002:a17:906:6a19:b0:b2c:b12f:429b with SMTP id a640c23a62f3a-b2cb12f63f9mr126937766b.62.1758496108686;
        Sun, 21 Sep 2025 16:08:28 -0700 (PDT)
Received: from localhost ([212.73.77.104])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b1fcfe88badsm941730566b.52.2025.09.21.16.08.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Sep 2025 16:08:28 -0700 (PDT)
From: Askar Safin <safinaskar@gmail.com>
To: cyphar@cyphar.com
Cc: alx@kernel.org,
	brauner@kernel.org,
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
Date: Mon, 22 Sep 2025 02:08:18 +0300
Message-ID: <20250921230824.92612-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250919-new-mount-api-v4-5-1261201ab562@cyphar.com>
References: <20250919-new-mount-api-v4-5-1261201ab562@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

> Note that the unmount operation on close(2) is lazy—akin to calling umount2(2) with MOUNT_DETACH

MNT_DETACH, not MOUNT_DETACH

-- 
Askar Safin

