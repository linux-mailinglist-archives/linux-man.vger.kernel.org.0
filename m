Return-Path: <linux-man+bounces-935-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 002D28C98B1
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 07:02:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4FCC2B21FC2
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 05:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BD8C125C0;
	Mon, 20 May 2024 05:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iYHC1g2a"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5938DDA3
	for <linux-man@vger.kernel.org>; Mon, 20 May 2024 05:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716181365; cv=none; b=DmnM5FJWpSetpIWkMOfjPc6SvM8DtVVUfMvaoJhc5Ijpx5V3svcq3bNwdgtSBEEoMO7Yqg6elApGxKnN9iqz5WVKwiXCk6uMekKb/+0Hc2WN9kjdys9OSRysZW28Q7V0hUXhe6irOduQ2v00+ATSH/PRZ5jPwqrBgI9c1KBMzcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716181365; c=relaxed/simple;
	bh=ZX2dTfconDZQC7KcVBuSozV0YDJyoBh+6n0/tlQ3aLI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=SCFFQSLYYP7hW6iZWzG/3g1lLSBBR9s8E8lrSFFYiS8b1pMI1fn2sOuDMFrxBC/9oo8YkX3mZtgY2SlNbksYkh6uuMViUVRMeJCo063K/DqdccqNK4mj0fV0sTkV+tFo1Tuh1c/x3FJQ3lHEehehJbDNk+Ywojk3pSqB7TzNhQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iYHC1g2a; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-354c5b7fafaso693720f8f.3
        for <linux-man@vger.kernel.org>; Sun, 19 May 2024 22:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716181362; x=1716786162; darn=vger.kernel.org;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xTAp+ormRrXR0yB1TS+B2AxdMT7PeC4qiZBXS9KWh9g=;
        b=iYHC1g2a+b0fWXKq7Ij9oyboym8vMeYXw8KUP9+EVc2Cp3CkRlNAVueDYOrKV6IkBE
         UQRaoto/vhxUk/Q5DskeEsEFGCXJ91pIf9KwwbofXHEeywkS05NLEZX+tPVQ/eQFg0at
         fJ1txDYf0bksh0virVv37b0Wo/OFFNEqUadpnrKywP7z6OtsgUzgBNVTLW5Z+7v4ZpK+
         uko3QQ1yWPQtRSHvQ6vFiRGqgzMJZgpdwU8mRRVClZHbdZmUV6Ic93CFLmOovaG5+znt
         IKgQGxfIOt8BPzMxqvpnaM7zcMkyN4UnjxHvP91iPRfexptJcLn5b8zhxRFCfeXGT3W4
         iReQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716181362; x=1716786162;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xTAp+ormRrXR0yB1TS+B2AxdMT7PeC4qiZBXS9KWh9g=;
        b=eh7UBlq6OlFwrWcvC7wSpQigy/4NYvQuUS2ERUeX57mBLouE6znOMtXVWYZlsKIqfb
         P9I4h9PtNR13nxeMg3tHv/zPKJfCXuCKedCEAEOptsMrYLhxH/fnUpxhIIn6uzWm86Rl
         WjcIQLnpc606PydNG/N3P/i8n0huqtWvF8Wxa28g8b82i5bUT1RuAytsZLXpELhCtFGf
         TGjEi4Sm8MkU3KyG8E6RLDKr5ZyJs427mbHYWO0s2mQT5dT/RqfQmkDWZJbNK2tO1vMw
         Dpx9JJ5Zs6OXJiD71GErjzE72lS5NCf0Pw0PloSdQH0a45YuAgMrP5H18fLNDQCKjYGe
         pXnw==
X-Gm-Message-State: AOJu0YyLXCu7rdCxjS7t+OPPBtvTmM8FbJURDOKsv4Ai+WGn9B2yqRME
	eNE0N96FIiELbN6D9qHGHfzwh0PTwDzUCuO/7b8b4M20rVKu3STr
X-Google-Smtp-Source: AGHT+IFF2O9wxzHK3wrPzoPJY/XXGA7Gomt5NCbRPpeqY84Bqp9UWftQoxWCp2MIE+DFyrMTTGzpPA==
X-Received: by 2002:adf:f251:0:b0:34c:f320:247 with SMTP id ffacd0b85a97d-3504a954e33mr17614858f8f.49.1716181361797;
        Sun, 19 May 2024 22:02:41 -0700 (PDT)
Received: from t420 (net-2-37-91-160.cust.vodafonedsl.it. [2.37.91.160])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b79bc8esm27974854f8f.15.2024.05.19.22.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 May 2024 22:02:41 -0700 (PDT)
Date: Mon, 20 May 2024 07:02:39 +0200
From: Emanuele Torre <torreemanuele6@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: pidfd_open.2: PIDFD_NONBLOCK is not defined by the listed headers
Message-ID: <ZkrZb91EgZoaOybZ@t420>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/2.2.13 (00d56288) (2024-03-09)

Hello.


pidfd_open(2) only lists sys/syscall.h and unistd.h in its SYNOPSYS:

  SYNOPSIS
         #include <sys/syscall.h>      /* Definition of SYS_* constants */
         #include <unistd.h>

         int syscall(SYS_pidfd_open, pid_t pid, unsigned int flags);

         Note:  glibc provides no wrapper for pidfd_open(), necessitating
         the use of syscall(2).

Then it mentions PIDFD_NONBLOCK as one of its flags:

  PIDFD_NONBLOCK (since Linux 5.10)
         Return  a nonblocking file descriptor.  If the process referred
         to by the file descriptor has not yet terminated, then  an  at‐
         tempt to wait on the file descriptor using waitid(2) will imme‐
         diately return the error EAGAIN rather than blocking.

But PIDFD_NONBLOCK is not defined in any of the listed headers.


I have noticed that PIDFD_NONBLOCK is the same value as O_NONBLOCK,
so perhaps this flag could be listed as

  O_NONBLOCK or PIDFD_NONBLOCK (since Linux 5.10)

like O_NDELAY and O_NONBLOCK in open.2.

This way the user would know that O_NONBLOCK may be used instead of
PIDFD_NONBLOCK if PIDFD_NONBLOCK is not available.


I have also noticed that GNU libc (in its linux-api-headers submodule)
provides a linux/pidfd.h header that just defines PIDFD_NONBLOCK as
O_NONBLOCK, perhaps another solution would be to list in linux/pidfd.h
in the synopsis and say it is required to use PIDFD_NONBLOCK.


Then, I also noticed that GNU libc now also provides the sys/pidfd.h
header with the definition of PIDFD_NONBLOCK, and prototypes for
pidfd_open, pidfd_send_signal, pidfd_getfd, and also a prototype for
pidfd_getpid that is an helper function that parses the "Pid:" field
from /proc/self/fdinfo/FD and currently does not have a man page.

So probably the best solution is to just make the pidfd_open(2),
pidfd_send_signal(2), and pidfd_getfd(2) man pages tell users to include
sys/pidfd.h and call the GNU libc functions instead of including
sys/syscall.h and unistd.h and calling syscall(2) directly; now that
sys/pidfd.h exists.

And maybe to also add a pidfd_getpid(3) man page for the new pidfd
helper function.


o/
 emanuele6

