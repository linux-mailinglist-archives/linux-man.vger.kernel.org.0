Return-Path: <linux-man+bounces-3224-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB69AEC475
	for <lists+linux-man@lfdr.de>; Sat, 28 Jun 2025 05:24:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2D6D1BC5984
	for <lists+linux-man@lfdr.de>; Sat, 28 Jun 2025 03:24:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4837378F4C;
	Sat, 28 Jun 2025 03:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EpgX/2ah"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C334D3595B
	for <linux-man@vger.kernel.org>; Sat, 28 Jun 2025 03:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751081056; cv=none; b=CQEPpXfYyDWAkhe3KVX4L9dUC5a6HdQOIM1a70NhxWYqESr5DRBNu/BGCCJ367A9wekdTMrQQuQsfeNxGaVU3i4gmJ8egM3p4hw/v+rvvb5jyXXn789WpVv4g05DouA/Q0fq+K7TtgxhQaHMn93J3i+DS3bNZpdeZ5ost1NNdZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751081056; c=relaxed/simple;
	bh=ZS4VD1UnmULnaurF31ExKI+R1M286IYUg5i6UoCQJRE=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=gbJToU9Fnr9IeG4fU27XB131k+mmhhkWU1e4qN2n3SbDArwIcLgYkCq8oM76/IdROE2t1zmApYIxUTWD7qRnnx+1aNrZ1gLdoPWqvk9GPk2VoBtzZL5C84dvGOe9+JJZwTpcu177WkC2M7CN1zRkSf8mlAW+z//GAT8fQ1oqH1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EpgX/2ah; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2369dd5839dso5312595ad.3
        for <linux-man@vger.kernel.org>; Fri, 27 Jun 2025 20:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751081054; x=1751685854; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bgT2aN1lnN0Ge7U5JJYqf8jIbfwKEU8cjMNv+cWwOv0=;
        b=EpgX/2ahAIjiqkMvOn0GESvOtKYZCl/nsPFuA1wXNvjVZTY9wAPoweLADo8CW5oDRi
         /xVDQqJK8V6OO1FtcMqP/Ea+8S+WtllQ9wFZRT72Z3OpY+sInhic1ewAc36KqosnxbVg
         FRJ4f8POVtbOLZuazO0Mnip8zjrZyX+6oAX8VtVwU3yfx/y1ASpGsnr41FtWjb7RVnKh
         Ut/jdJcxWcODNcHfG/q8pFN2BaUB6pJR0OlCpFSNFHkL3ebwYk3e5QAdpTuWc134xsWG
         E/uQFvUsRJtHrzaIQ/vcra7QiPvKES2ZYc20wwGm5/E3NQlST7DXr/0GmBNIZHck6+oG
         ZMBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751081054; x=1751685854;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bgT2aN1lnN0Ge7U5JJYqf8jIbfwKEU8cjMNv+cWwOv0=;
        b=et1BCZ7fqkYXFApkWMWLEo2rIlTC8Nhy1qeaoX5iXZgWgE+XAWRJblJjOoxKA3YaPT
         A4+FuUEZRVxLfx2Z8ory4ebZ8cbSDEFVqMw7pEH7uO6YiXQvwYWvDMe1zVwxKgrDJB2R
         Tq/A/RzJW5DHCNBS+tWKYch4+qx/XDNLOv/OVYcAbUk5rRTt/PTy2QcTO8NxPchVCwf2
         5BE2vS3PCzgoXPc3yPnMqgv2C4A70j6PLq9vQkI4MMMAKNOH9zvVGjwCz99BhWayo2wx
         i7mjM+CRNz2TdBN9S6dnQPGwpR+Wo5Y2jF41Dxokf1tItgWHQq2mpx5g6IAgEkGg/TSl
         RKzg==
X-Gm-Message-State: AOJu0Yy/mhgpWQ5AVvbLMjBrAv9YdB4wpcJ+kp+cUq9h336SdgGn2fPS
	u6iuTd0GdvK2YoD74EKQX4dIFQJe6NrN1zm29Ucwlr7vEzSzaUKtJeok3N/moZj2pk04hhLnrCU
	ipXUlL5YLiOgX0U7PL6a0Q6i9LrF4J9HVQlRZ
X-Gm-Gg: ASbGnctcA46Y1IvQQcnE/RusocSlo7bnwNbYhll7diX9eX+7lYLZe4rTHyWsMtoqrpJ
	2PlEO6xZ+GP4skSSAy2tjzwYBzap9dGGu7KeAqGQZPNyUMVwIWc+1EubaILFdi2/46/48Tc1yLw
	YpWcHFKVgYn4zDZ5Oe91VO8xZkBeIrCktbXhG3ThuCiny7gTHv4Vh76i1qmsunPDN5oigLQKdD7
	FKyRbIeurB3Znvn
X-Google-Smtp-Source: AGHT+IG5LQhnkFFsM4WRuwQYtjAiKpRhHkLx265Tfz8eVSkWN689hIBcg6w89TD/cTJSsJILjjGRfzFXqF+UeyRGMjc=
X-Received: by 2002:a17:90b:570b:b0:312:1d2d:18f8 with SMTP id
 98e67ed59e1d1-318ec452c96mr904667a91.7.1751081053989; Fri, 27 Jun 2025
 20:24:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Brian Beuning <bbeuning@gmail.com>
Date: Fri, 27 Jun 2025 23:24:01 -0400
X-Gm-Features: Ac12FXzCciQAb-xQM-nBXFyq-CmHotwRtsQwofBQPfMei5B0bfrCqfYFoCIg2wQ
Message-ID: <CACbk2c9mr7-jHodA=0P73RCDXep6Bvpq8snh5zD-Gze+4NgGLg@mail.gmail.com>
Subject: add_key(2) missing error ENODEV
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

The man page for add_key(2) does not list ENODEV as an error code.
It happens when the "type" argument is invalid.

I spent about 6 hours figuring this out.
I looked at enabling TPM and UKI.
Then got the kernel source code documentation which explained it.

Brian Beuning

P.S.  This is the second sending of this message.  The first had HTML.

