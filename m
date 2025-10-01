Return-Path: <linux-man+bounces-4019-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E730CBAEE5B
	for <lists+linux-man@lfdr.de>; Wed, 01 Oct 2025 02:38:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7D063C7860
	for <lists+linux-man@lfdr.de>; Wed,  1 Oct 2025 00:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84CEA15E5D4;
	Wed,  1 Oct 2025 00:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VTT9/K0O"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0471DE3A5
	for <linux-man@vger.kernel.org>; Wed,  1 Oct 2025 00:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759279133; cv=none; b=hgNoHxN4njIgV2ssdpU6jqb/eqVu7li8vhD8DjCVOhTFjtS+Q/XiNFVoPVtrnFlnaAQq2Se9KJkK6H9QH2uakjcbRb8FiG/6Ke2vANw85tgwtZ6xlKHtm/KD5LgvCF8bhTQExE/0iIflaJjjIMvG4JONutEWdMoQRIy7je/BNS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759279133; c=relaxed/simple;
	bh=pTt+ujkaZVjzP+3E74ZC6wkNRrnymwupPOqQi4vVrqY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tWAVP+dI5dfon8KVo3Q0i4rPRZYN0sMNqP244ocu0p+aQHTZZmvZI2yeklC0e4b9VOlylBBS6BYv+gIdv20k310t13G92kaxJ5o4JFzd8P1ob6nZFQA0T3lieVclmaziJeGSqFnbSkIOSo8YKWLUG7jPdAE4a7bgnER+txWt81w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VTT9/K0O; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b457d93c155so232265666b.1
        for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 17:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759279130; x=1759883930; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=80RkSLcN1Mqe0fHp8+5X2rCf+ePo64S5nx0U5sFjDh4=;
        b=VTT9/K0O0oDwmgwwY5vi6S7WOAik3VQgHyiT/6SxbK9ZUHaQ5GSAQI1JI/zqRxoJvk
         Kpyry0MQK1AOkFagG9dCMZLm5/jCxooEDL98twvPRdWhfuU/aXm2Dj5YTX13PN+Z2K7R
         aMEaLi83fby6RYzPt6HA05Qd+CVGNAXXrj8OB1VvkUd4JfcbQRPyeycTWQgHJYt2AX9g
         1hedhTKYBu/9+doVgrWQbvqIgaBTGRyq7ZU6gc2/Wd+6XoaTvp2WOVs6uG+vGNewgpuf
         HDNYBAkj4AJIOLVZax9WwsowRmQn4BcoADFixmMr327lncWOMgkKMxI/yJgbqz3pIWMI
         MC6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759279130; x=1759883930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=80RkSLcN1Mqe0fHp8+5X2rCf+ePo64S5nx0U5sFjDh4=;
        b=WaIP2CyzPPuL64iCI9if8HwGID2QG5NMW5+DD9Jw4ANHdOYa2sCjdaOAkaxoWne2zo
         SoVSy2wfumlHet0Hr+bTYYjL5/XKaFBub/dT6JGn0G8xbyF8iFOaGg1IqQfR946q8Ar5
         DWMBnazrZceNkosXgeWk/gihWk6QiiWwRNXvQ8zUkJBcLx2cOBMjrY0MfclSDncr9wyZ
         q6wvjTOS0czdyE8UAkEn13BrCif3CAqfhwaOPYgRVbI0YfHUV9F8GMck7H7H7W2Ioylx
         GuTGX6++pdr6uVFSUZOhPYovCTMOBp92T2pZnUpSYJBv3WkRfNq8mauQP26fql78L9LB
         dKjw==
X-Forwarded-Encrypted: i=1; AJvYcCXpf3O6NqlGq/nkC5pZU3Gt0Nn0Ac/v5+YsTmyoM/p86GItzFBNkCMm0HiMQ9mTiQEHKTPosOVCCaA=@vger.kernel.org
X-Gm-Message-State: AOJu0YxtrOrbMIbO4JX9DlPrGGRFoRTu3fNnMYniT8NIUL7nG5JA59wX
	mZGWZdP9D8B6HSHKL9BsxJU8/Jns3j676zmHQtm1oKRilqLrCD/j+l40
X-Gm-Gg: ASbGncvcto6qoQdk5iuU0/QK297uyCKB1TP2I5Zap8LSOIdPeBIpwZsY/utezvuSB7t
	0akSXO6AMOYOF4GZmHiCrwf4hpxJFGl1wldhYuDl5JY0DX3FGcCnuTDdWFoLJmPcNOojJultZce
	5Wr37xc2pLhEcYm1KFuHSjz+1wCciofUc8uBdB9z+fWD3urPnXdTWpNX+mO/HnccRwfeehf+iAV
	Mazkg4GT8xqQONkcdiHZxTbGOHBum1SxqlRLh6syoZQd++12nyPV3SExlO/yfGhfb368uq7nREq
	3UpWGM58eznS86Yjvl3PXlMppX917wzCjsFEf+gXkswOeGS3I8lhXm/VFIC19JbUhLFiZgFOi+1
	hVwKFhl/hj9iMltDCez4Czfa/uqU0eJk/1d8BOA4TPJA=
X-Google-Smtp-Source: AGHT+IHK0/LlHSuoPWFmCm2v5eRSFa2VBRwHPtGKfZiRLiGohR1gYvmPq6f/J2GBYW0sSTfFl1HKAw==
X-Received: by 2002:a17:906:c156:b0:b28:f64f:2fdb with SMTP id a640c23a62f3a-b46e2626cccmr167161366b.4.1759279129687;
        Tue, 30 Sep 2025 17:38:49 -0700 (PDT)
Received: from localhost ([212.73.77.104])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b35446f79besm1255821866b.69.2025.09.30.17.38.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 17:38:49 -0700 (PDT)
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
	viro@zeniv.linux.org.uk
Subject: Re: [PATCH v5 7/8] man/man2/open_tree{,_attr}.2: document new open_tree_attr() API
Date: Wed,  1 Oct 2025 03:38:41 +0300
Message-ID: <20251001003841.510494-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250925-new-mount-api-v5-7-028fb88023f2@cyphar.com>
References: <20250925-new-mount-api-v5-7-028fb88023f2@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Aleksa Sarai <cyphar@cyphar.com>:
> +mntfd2 = open_tree(mntfd1, "", OPEN_TREE_CLONE,
> +                   &attr, sizeof(attr));

Your whole so-called "open_tree_attr example" doesn't contain any open_tree_attr
calls. :)

I think you meant open_tree_attr here.

> +\&
> +/* Create a new copy with the id-mapping cleared */
> +memset(&attr, 0, sizeof(attr));
> +attr.attr_clr = MOUNT_ATTR_IDMAP;
> +mntfd3 = open_tree(mntfd1, "", OPEN_TREE_CLONE,
> +                   &attr, sizeof(attr));

And here.

Otherwise your whole patchset looks good. Add to whole patchset:
Reviewed-by: Askar Safin <safinaskar@gmail.com>

-- 
Askar Safin

