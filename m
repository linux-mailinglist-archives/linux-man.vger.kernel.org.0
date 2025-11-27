Return-Path: <linux-man+bounces-4333-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AE81FC8CF30
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 07:42:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 526F534F704
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 06:42:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CC792D948F;
	Thu, 27 Nov 2025 06:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="i5SilRMV";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="qxzRV6PH"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 864B22BCF4C
	for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 06:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764225713; cv=none; b=I56FeAqCd1qsW+7RefT213SHpPqcEdysfd6IRVSdyyIFzgm+7Xs/rJI6snDGW9lpnQByRAJW1I01woLqk/FQ0kikN5ljD1taPBp9CXMFRA/lzUpQ8XANjGE0T6C+fV78MyEghSZQiEBxz7OH8Kvp1pUR2b20/CQW2vymnuefQGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764225713; c=relaxed/simple;
	bh=P7LGUHYKdhq1bAhbf9vUHJQesCf2fVmP7ZirsWDiSEQ=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=T8l/GhEzollfOIfkJcuirWckOc6psdKSDRHOCEqPpnL8Y1+EO4aBuoL7/F7D9oxr1+I3E4ziwObpvkWXdVkS0EtEGkqE5xJvNUa7YZHj+JA71qoYRN+m5RXCSvDZX9Ra7GayeB/Y1tpRiNL2DX+NWzToCSSyWRRMYIzMEqk13ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=i5SilRMV; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=qxzRV6PH; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764225710;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jQ/61VsCUyMyPFJ2aUBOBqxskR95IkdFAfSf68fc4NI=;
	b=i5SilRMViiecbTY1kr6O3FGEDaetzmQ2gJ9h9RsrJuxPoP5j3WpO9e0A5AbeD4gch2+kiD
	b4K8WVsZIsGcULyMwkwZhuoLpA0nmojRngJaWMcG3NF5LglzVLL5dOsPDXdTAh3f3ofSvv
	24x5SicofSu+J/ltXEEuNVcxA5zfVeQ=
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com
 [74.125.224.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-336-hcOKaCXePNeZvc4ie2vqMQ-1; Thu, 27 Nov 2025 01:41:48 -0500
X-MC-Unique: hcOKaCXePNeZvc4ie2vqMQ-1
X-Mimecast-MFC-AGG-ID: hcOKaCXePNeZvc4ie2vqMQ_1764225708
Received: by mail-yx1-f70.google.com with SMTP id 956f58d0204a3-63d34257de6so598807d50.1
        for <linux-man@vger.kernel.org>; Wed, 26 Nov 2025 22:41:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1764225708; x=1764830508; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jQ/61VsCUyMyPFJ2aUBOBqxskR95IkdFAfSf68fc4NI=;
        b=qxzRV6PHI2Tl9GOGN4LGXZGmyQqe8xjZ7Ff0WWk/V+e0klnijwTJ8psLPPQms6RSA5
         3K559F4BM6WJhjG12lP3W61DQJKsgHT+uEIn+X8TwyCoyZTndI9vbV0iIvH3+G7fcRiY
         qZkbJaUeMbkcZ9wcyxO+h4E1lVCJTPYUWM/V5mWwaZ+/xdzol6VNV59oP5JmUPe7cFm2
         fQNJm7UqswXBXUGn8HIPtJT1NuqsGbi9OkrtTKUFYnOafu7vUTw6K2IzoaWJg2AtndSf
         YBOqZuEI6JyV1+wsTVv59JzjOfTmmGnFprJof88T28WpabyaCXgcaKZJxAOnNE+Ehgz1
         2YuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764225708; x=1764830508;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jQ/61VsCUyMyPFJ2aUBOBqxskR95IkdFAfSf68fc4NI=;
        b=uBtL9kpDUqngsPeNv2GomZuAJhEGiQkiGxA3e38nSn8Nxd57juxrfUrg2UmLAmjxVZ
         aS+5+AZL8E1PxvHEUbiNV6jtlq6X7gfcIuJlUXsKD6UrTMG8/dA6I67gGuWSoY3UsueH
         yx0w2TMRuUiWnK4xE11xijGw5s3tckTD17ps1pTVgsk4e9KO7Se5Hm+LgtlZCf/SZ2kl
         4CGBJpqgEdT66cCul/rCvA+qcTSv89mzv9gb00ej/ELgQe227bCL0Lb04DL4QrI4Ty+z
         kSz8bapKOkuUoCKvdXAaSly1UBM6rTZTpifu1mOybHs23X+8BnKERXJI4Itvhii3PWDL
         pMdw==
X-Gm-Message-State: AOJu0Ywfk9aNUD3mndeoyjgAgjW0J33K8uubcoWqqYP8JNXqx2NYmJYg
	6DUH7hE+K42V3snXjlfREqyQr/jEgUkBLrauWxJPph3ybihOsBJ3SoHPwffbkmXTOXrhYdEJMid
	ypLMBYHkcrOdTMOIHJdAUD94onp0gbo+89KfPZt38CtkM1ohNJPlbFs0jCHyjG/Uq0IN4utv9Of
	h8l97aEiYTV3mPxbzG24PIgI+elTsCclMY2JGaAL3mqCx1sLk=
X-Gm-Gg: ASbGncvk18YHf9SgIIT6Vv7oXZLkWkU8QaoprnVSlb+DetRZwNBCsu0mlJZDMjnn1ML
	gEYKHamSwc7r6ZMW06aTXK1vKC1rLoTCcqCt9YcxtU2+zI2Y6jknvA1mlrXQAK3uLRkOjQ37TaA
	5bptok/SP4EVeuqQO4C+H2LUymLDbLLM9uoFhEU3TFF6btxr4LaAogb/sxYz9jzpv6qw==
X-Received: by 2002:a05:690e:1519:b0:63c:f5a7:3da with SMTP id 956f58d0204a3-64329350169mr6358271d50.54.1764225707787;
        Wed, 26 Nov 2025 22:41:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEc4Dd3ReaGndkvl8OJD+beH5b9Ax6lIBnOSAHlSYo/pJGBx9dnUlLv426SOTYwJkoctUPxThDfgCECaTOve38=
X-Received: by 2002:a05:690e:1519:b0:63c:f5a7:3da with SMTP id
 956f58d0204a3-64329350169mr6358259d50.54.1764225707479; Wed, 26 Nov 2025
 22:41:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Yedidyah Bar David <didi@redhat.com>
Date: Thu, 27 Nov 2025 08:41:36 +0200
X-Gm-Features: AWmQ_blbkx7Eq5INIbzCRhBLSl63byCDdrChle63YK-bOKnU1iyHzVWJGnOo2jU
Message-ID: <CAHRwYXt8BBbonzELoi=TpP4_A4=mo1HKd4-kY4SbrCKHx+k4kw@mail.gmail.com>
Subject: Suspected SPAM/AI (was: [PATCH] man3/getgrnam: clarify possible errno
 values when entry not found)
To: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, Alejandro Colomar <alx@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Thu, Nov 27, 2025 at 2:28=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Simon,
>
> On Thu, Nov 27, 2025 at 12:19:20AM +0000, Simon Essien wrote:
> > man3/getgrnam: clarify possible errno values when entry not found
> >
> > Update ERRORS section to clearly separate the POSIX-mandated '0' return=
 for 'not found' from the various non-POSIX errno values encountered in dif=
ferent UNIX implementations.
>
> The patch does much more than this.  Please send separate patches for
> logically separate changes.

My gmail account classified the original message in this thread as SPAM,
as well as the other message from this sender.

I looked at one of them, thought that gmail got it wrong and pressed
"report not spam".

Then I looked at the other message and started suspecting more.
Searching the net for the email address strengthens my suspicion.

Following the recent discussion about rejecting use of AI for submissions,
it seems we'll need stronger means to actually prevent them.

Best regards,
--=20
Didi


