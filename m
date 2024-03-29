Return-Path: <linux-man+bounces-706-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F5B890F9A
	for <lists+linux-man@lfdr.de>; Fri, 29 Mar 2024 01:30:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10DFE1C2DE52
	for <lists+linux-man@lfdr.de>; Fri, 29 Mar 2024 00:30:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 623016FC3;
	Fri, 29 Mar 2024 00:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Eknif6ra"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3FC4C61C
	for <linux-man@vger.kernel.org>; Fri, 29 Mar 2024 00:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711671912; cv=none; b=dUdJ7kpJzHTnOExSwsUwMKYXuo9robYDiF/MREFwjENfqR4+V7kU2I5u/FGg3FXi4xI6cd7vseiSAhWf51k2Hp+VIo2r1ltJa/hlCRAIFjbA7zEGzblLNqniOaxg39uAuWzZDm0SWAi5F1GoxUDD2blEs1hJviOdt6C+cXYemnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711671912; c=relaxed/simple;
	bh=iAjbxbsSHwuDhhoeS/9g3IN5kAmxL+Ag5/8Pv5DZ57A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cwENpsAFxx7nCKLpzFEQXKPpIAlgG5rRMK8gG6lbW4U9aHbNfT9jLKDkcEkxW7pyDpEH7j21P++VH8Trw7oa6nmB+cRXGdhT7UsBwb8a+ehAcyS8aKs8hPdkTx0qNk2jpmWJq/yCECzknj7Wb1TVTegeriniJbirQ+BRxt9vn4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Eknif6ra; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-222b6a05bb1so980055fac.3
        for <linux-man@vger.kernel.org>; Thu, 28 Mar 2024 17:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711671909; x=1712276709; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iAjbxbsSHwuDhhoeS/9g3IN5kAmxL+Ag5/8Pv5DZ57A=;
        b=Eknif6raE4JIS6LqMxHbaaAPfWIPrBZLa1xL1POSWMNWXz5avGxQXDuYK+nEL4k9+7
         demmiCOA4fefUJnksVRqzIYiLVw31Tnfnu1VBr37E8ihwnX6XTWUWPn/tVi6d0O5pcNO
         hXeCKx6O9mxkkYW2NqbGAG3OkjQY/bNkv8srrrrS+dJRX7giM0IIQHmGhyVgkDoG+iM6
         YWYFx5QAHTjunrm7FpDDL0eS+SUczbtJNmz5fn9LL3xam8TKZ776yByQY7ChIgjJ//yT
         h4yq6VNtvu4OaXl9IbtvJb9CBOk5NLqLqOcwNKUFsu9a6BQXOWEsH8JiECK+FsJVVguM
         nr6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711671909; x=1712276709;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iAjbxbsSHwuDhhoeS/9g3IN5kAmxL+Ag5/8Pv5DZ57A=;
        b=wpxhP5UKEqPZDvWrdO22c9APWDu5qOQShLKDtI/p11Y6uzG5LOTzzPh6BGaeL9qmVz
         JZpHWb4b72hTcgzYBYeQCitLDGpVvSyc1SCeuZdSRW/xsd/0kds2Y/U2aEN688nnBjOE
         3vBiLgdsZiYVEp+dlDe6Tk7wjjqnYXzdQp8f+D/ypqCKcBYupipMyAw1RcNm/mEubRJr
         HrcFOrZnWtjy45TRLtL0VomPz6/BDVGKk7Th4i8K1mfMvbA8AAnDqp/UhGVNZcuHB4WW
         gJn1eyMAKVTejxprNJBKAFYus4/3PJdl/ERHCZNAELdrszjCPAJU17ZIgP0EkZggUAwF
         rYdQ==
X-Gm-Message-State: AOJu0Yye9c/jrg4czddRfFVac0lyF3HGx4thYE3HB+eJzqv+/7aW4jNh
	3chWak2HdzoYkKgv1x9hYWBPMKJDmuHu5DQ7hcEQogKm8QUF6Y1udMvYM5dNg1Otyq2Ez+A84QI
	LJQ5VyRheV717lnmx+KURn9pWkP8=
X-Google-Smtp-Source: AGHT+IFOaZMAmh+Www81M8aaqTBrABgYSJZ3HhyYRKdvfogBoyPryPo/Hct/LG0WOw5gzU0+TUJjLkl8R+Ab9FJDRpE=
X-Received: by 2002:a05:6871:6a0:b0:220:8b8f:fc4d with SMTP id
 l32-20020a05687106a000b002208b8ffc4dmr847124oao.39.1711671908893; Thu, 28 Mar
 2024 17:25:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJ_gjBoqD2mWoJF0QH7YB=Z0Wy00XFO2yRJ0VQDxPmp3niisYg@mail.gmail.com>
In-Reply-To: <CAJ_gjBoqD2mWoJF0QH7YB=Z0Wy00XFO2yRJ0VQDxPmp3niisYg@mail.gmail.com>
From: Fedor Lapshin <fe.lap.prog@gmail.com>
Date: Fri, 29 Mar 2024 03:24:57 +0300
Message-ID: <CAJ_gjBo1fFqwPO+gN1-KVDJBd0Yi_oDHmqz8O8U1m1AM91548w@mail.gmail.com>
Subject: Re: [PATCH] getgrouplist.3: EXAMPLES: improve error handling for getpwnam(3)
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

For some reason my mail client decided to not reply to the previous thread.
Yet again, sorry for the mess. This patch was related to our previous
discussion on getgrouplist

