Return-Path: <linux-man+bounces-4105-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60558BD0181
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 13:27:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 98ED41893A83
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 11:27:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74D6B246BDE;
	Sun, 12 Oct 2025 11:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JAiUcBfK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F2D1FE451
	for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 11:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760268452; cv=none; b=lkEQqxNO8xaEGmnagEyZyIliaOpmSbFndg3pgy15vMOseXh8i4pHQlS7UdlQiIlWW5sI63rpqYpnG792xMgnWFH2m6q2JJ2EuFk+5Mh1Suq55ol7QJxvtmvatCE0xiZ98Bt2wetCy1H0NYSUnXsez4bzlsfJWj5oXEZ0zdNbj3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760268452; c=relaxed/simple;
	bh=mZuy+q7YShu9142s/CZ5ntCHum6xcITP08Ik5YtU3EY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sa+butlYGx+BsC9j9YzCNoMQPbQXK/fr7zq0Oe3cPClGq0D3FkizLSPhCIOgIibxSeCgoogup/JbakKVDIDtpgbIXy2ukl6fSj3pur6fHmzl+QAUqhjaslsBuPPAJFBqzPltlhH8gb1vVvG+rLoCQquaeGTUw8Ap9JPjBKlgIEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JAiUcBfK; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-46e5980471eso17277095e9.2
        for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 04:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760268449; x=1760873249; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HbO1RUDsAWDIoIlyeqIMdpVMOfB3YykkSikMqjPALEY=;
        b=JAiUcBfKHCjNHNHxPKuPRoze+SkzuzVTr0GrVRbTyJOgsAR+BKeeXlVHXkMj0Hhf7B
         eTfBPavylCLthPy1IUihmO1HTF9uc/rxw9mfaZJtrmOWmjQPK2toqqqM74ujqnt60Jox
         Cn/GltExyIDYcapZev9uEkvtV6YOEtzgRWcyNpdVyrUy3KcxUEYVuoL+C71TcpXSlWRu
         +n4yoQF7gKTqmAa6ZjKnqS3dOYJc6cyFAwkhR/1vKgtzX23hQ+Nnqjpt6WaZi7w0HBxY
         CF+nt7vgmJKHQaPhTHvhjaoUnQhGL72pky/FM+1HdQm8QKFSExNuknaAgSy14++BrAn6
         /99A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760268449; x=1760873249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HbO1RUDsAWDIoIlyeqIMdpVMOfB3YykkSikMqjPALEY=;
        b=o9X/GD0Cy4oHwClizreMjifph/bZryK0XwjvN1ZSBXQW1+t+3+krV3Lix72K8Yz3uw
         h68cm8fIIaC1DsWfZHQuGO5IZxwGyjI5B9sSlFVzA0HYqCFiuX3rikzIIPn9VLyTrI65
         KSFv024nk+1wtZ21HHXQM8Tm9cAD9S2Vd0cWVq7x2Q9oCbgEMId1ZF5nRuQL9L11/E2K
         OxP+eLdyNl0lftGCSXRXJG066f1JxUEjIVEPOhTaxnWuyyR27w1UIn7Z5dglcf5Tm9Tq
         FX2Ag5pUrcDc6NMMofmRiNwcPUXmHs07+8LPQM1cocbyW/FAkW+XOLHhnDpNhZ3CyLoB
         QQbw==
X-Forwarded-Encrypted: i=1; AJvYcCXGdRFq3Wa4ke2jYVDSjbwXidaDJzN9aGt0+BL1QTVFd0uTkIU4zxK2/xTshge6TMsypaSdGP3l+Sg=@vger.kernel.org
X-Gm-Message-State: AOJu0YxFFRSxhq+aIgPp7OS7F6L7xev5KT0WRlVId/0ScvaBVva2unGh
	cMrKSYn/q6DIb5JD0o4Gh03u04wBkEZ3MvIyXIxYtcWr0bIzRTIJZfSL
X-Gm-Gg: ASbGnctXkDpJryid9nyy57XCcq92AOC5X10Twp5cU0zUPbR7qxsAlB4wWm27WAqeETx
	tC3mGV5L44g+XSYbX3ISAZP33owO99ndAV3zceL6A5jDb97mBM56yhN9DaYfBjyfAoD+nfLnB6k
	0CMWgi8/8XdpaSXHWjviXUruBK2y/d3hJHMYNK4Z/hzVJLKC3eakTxM+09WTBuzH57Dt1p4/2jN
	twMQVc6IVyShTT5KvkLYtk6GzZy2PeFpkANFVzEkCvwniVC0ahrVzY5YSwpiPdaBPbrixoo2P1S
	D3uGJmFBd6MzX1u0nGpkRPh7VPJkRO/wUU9JfVWMfSuJnJ6sPoqIAYedgS1NYzpt3yCqO3fbe7x
	ZEKKC68Wc+R08n9OlOfWx5Tqo0Ccwgu1KclvNhg==
X-Google-Smtp-Source: AGHT+IF3pdCvcLd+Zp4Lzx7x8u0sYsLUwD2VM6/35sHH+5UsbHJ5uw2Ut7l9mdO5uCF+kgctu6up4Q==
X-Received: by 2002:a05:600c:3b2a:b0:46e:3e63:9a8e with SMTP id 5b1f17b1804b1-46fa9b07717mr98919125e9.26.1760268448916;
        Sun, 12 Oct 2025 04:27:28 -0700 (PDT)
Received: from localhost ([212.73.77.104])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-46fb49c4027sm130749605e9.17.2025.10.12.04.27.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Oct 2025 04:27:27 -0700 (PDT)
From: Askar Safin <safinaskar@gmail.com>
To: luca.boccassi@gmail.com
Cc: alx@kernel.org,
	brauner@kernel.org,
	cyphar@cyphar.com,
	linux-fsdevel@vger.kernel.org,
	linux-man@vger.kernel.org,
	safinaskar@gmail.com
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple instances
Date: Sun, 12 Oct 2025 14:27:21 +0300
Message-ID: <20251012112721.44974-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <CAMw=ZnSBMpQsuTu9Gv7T3JhrBQMgJQxhR7OP9H_cuF=St=SeMg@mail.gmail.com>
References: <CAMw=ZnSBMpQsuTu9Gv7T3JhrBQMgJQxhR7OP9H_cuF=St=SeMg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Luca Boccassi <luca.boccassi@gmail.com>:
> IIRC Christian said this was working as intended? Just fsmount() to
> create a detached mount, and then try to apply it multiple times with
> multiple move_mount(), and the second and subsequent ones will fail
> with EINVAL

I just tested current mainline kernel (67029a49db6c).
And move_mount doesn't return EINVAL in this case (move_mount succeds).
This means that either EINVAL is not intended, either current mainline kernel
is buggy.

I tested this in Qemu in very minimal environment (rdinit=/bin/busybox sh).

See C source below.

-- 
Askar Safin

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <sys/stat.h>
#include <sys/mount.h>

#define ASSERT(cond) if (!(cond)) { \
    fprintf (stderr, "%s: assertion failed\n", #cond); \
    exit (1); \
}

#define ASSERT_ERRNO(cond) if (!(cond)) { \
    fprintf (stderr, "%d: ", __LINE__); \
    perror (#cond); \
    exit (1); \
}

int
main (void)
{
    ASSERT_ERRNO (mkdir ("/a", 0777) == 0);
    ASSERT_ERRNO (mkdir ("/b", 0777) == 0);
    ASSERT_ERRNO (mkdir ("/c", 0777) == 0);
    {
        {
            int fsfd = fsopen ("tmpfs", 0);
            ASSERT_ERRNO (fsfd != -1);
            ASSERT_ERRNO (fsconfig (fsfd, FSCONFIG_CMD_CREATE, NULL, NULL, 0) == 0);
            {
                int mntfd = fsmount (fsfd, 0, 0);
                ASSERT_ERRNO (mntfd != -1);
                ASSERT_ERRNO (move_mount (mntfd, "", AT_FDCWD, "/a", MOVE_MOUNT_F_EMPTY_PATH) == 0);
                ASSERT_ERRNO (move_mount (mntfd, "", AT_FDCWD, "/b", MOVE_MOUNT_F_EMPTY_PATH) == 0);
                ASSERT_ERRNO (move_mount (mntfd, "", AT_FDCWD, "/c", MOVE_MOUNT_F_EMPTY_PATH) == 0);
                ASSERT_ERRNO (close (mntfd) == 0);
            }
            ASSERT_ERRNO (close (fsfd) == 0);
        }
        ASSERT_ERRNO (umount ("/c") == 0);
    }
}

