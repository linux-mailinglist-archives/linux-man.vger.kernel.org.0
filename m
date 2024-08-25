Return-Path: <linux-man+bounces-1695-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFA695E1B0
	for <lists+linux-man@lfdr.de>; Sun, 25 Aug 2024 06:23:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A8CD51F21D47
	for <lists+linux-man@lfdr.de>; Sun, 25 Aug 2024 04:23:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3DE014293;
	Sun, 25 Aug 2024 04:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QIU2mLjA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8822F2BB09
	for <linux-man@vger.kernel.org>; Sun, 25 Aug 2024 04:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724559778; cv=none; b=WZkjysf7+4Qo8gQr7wba2r+sQW7TKSipUjyd0WTETp7Fc1X1WgQ7EPd/xiMmAoeyWDfbE1aDffC3WXRU+zYJYu9FBHdWGFllq9/2ONwiE7bV80yfn1h341zsD/3zrV/8+O2pv/xJKVAO2GwSbQGFVDGPRmOYUVxmqXEUS34+S5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724559778; c=relaxed/simple;
	bh=os+zb1jzNqTX/8aJuLqedu+JhZfnN+z9p2YLTP0DT1Q=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=EQr6peoQD6z7aqDnssg8z4iIP/OVodj/S2Cqkz9BdYvShlfetHWeqISwl3xWewrsE9PTqniNu1M/v7TITlOo41HPB45p/MSEdWSBPf9LBGADeW/YTCphyjVOm7B4Q/tPPOw7NV+0GFE8+WPCjCtV9nCaXKeCVo3wcZo2Eo4GbL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QIU2mLjA; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5befe420fc2so4025052a12.3
        for <linux-man@vger.kernel.org>; Sat, 24 Aug 2024 21:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724559775; x=1725164575; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=os+zb1jzNqTX/8aJuLqedu+JhZfnN+z9p2YLTP0DT1Q=;
        b=QIU2mLjAp086Qd8UHhsUA1N+j9ukDFvo+eu7WMitEg8vfnb7IbGY90IG1drYaRCTPp
         ugRu62dlainH07ktW/3pxIqmq8slC2shxZftSkeHW5yuodN0IcOvUhdflM42ehl19/nS
         ZdU/Yl8AhlVe8cgoJazhgVI7cX/ajgJIwyl5G2z3vexDSZgx75G8Sr1DUeNsG3mJrU/U
         WKSfYz9kmnQ1Mo300ZbIES7YAbHSgcRNpotemSUhr6I4ZPJFKaXyHQIOm2xDQsF52yY5
         qr6PVtzJ9yuXB6oIC7CY9caFQ4k2e6kUAomNwQqa9hSn/75WtkTkuxD7UxUvybfJZa+Z
         7Lkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724559775; x=1725164575;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=os+zb1jzNqTX/8aJuLqedu+JhZfnN+z9p2YLTP0DT1Q=;
        b=pxRCIxu5t+JqF2CQHP7uUwgtFGgq5X9VF9yEGmsj9K4NEm3ELD2s1FuMc+O7RSWyQ1
         AVzAeZTs3SVzbRBr6KEBYn6GhIUzG8Yu4zllCHu5K2n2qbYwKsvu9bFKU8lT8ScCE23k
         1Was4SrQpIlyeHXzKRcLT74kJAs6UZkLzMhPTRxWPmPwuu9bRmIkef+FgVoGxPxMK/5k
         /Uc06DvRfQuYVb+IyltUDrwlhkiKnH/ABx1n0TwIaWzDLydeiydtL8MrzRbTOmVO3AJI
         5cs3/H1Ac/LLhGifXMJlTAaB2XPM6I0eyPCAYyWaAFxuJpZ+Q0S5M35Dn5sGBTP+s/y8
         fMdw==
X-Gm-Message-State: AOJu0YwSZ2inokzfQCtmqVj6OPgvdjxHS10ZlaK3XaZoHngRIR91gmec
	4FQBZt/JmYPdAgYmmoXQZulvZ73PQ5y+mErg8ffPbdW0X9zdUL/+2ZCz8AE/dINWuU0uV3KMeHX
	cpPtvdh889aJelALeDxRplVbIvYXcl4fc
X-Google-Smtp-Source: AGHT+IGOrc2LFgwkSwfpCapn+DPFG8edKa6yf6DvmyMpDmg5topZr8t3v7S3hWhXoHCX/Ih4OowWSIzzkBaK0z0z6xY=
X-Received: by 2002:a17:907:94d1:b0:a7a:ab8a:386 with SMTP id
 a640c23a62f3a-a86a54df98amr439790366b.63.1724559774439; Sat, 24 Aug 2024
 21:22:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Absee Seeab <doesnt.look.like.temp.mail@gmail.com>
Date: Sun, 25 Aug 2024 07:22:43 +0300
Message-ID: <CAHeAhPS-Z1zV_2TX3T-FPcgW9H8DLafas9-GGUpr-pk-5zEzXA@mail.gmail.com>
Subject: Missing crucial information in splice(2) manpage
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hello,

The splice(2) manpage (at least the version at man7.org) does not
specify that off_in/off_out are written to after the operation.

This, however, is done by the kernel (observed both by behaviour and
source code).

Plus I see similar functions (like copy_file_range and send_file) do
document this fact, but splice does not, so it seems like a
documentation omission.

(This caused me a bit of a debugging headache today)

Thanks

