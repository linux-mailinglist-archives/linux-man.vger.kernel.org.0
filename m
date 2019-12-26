Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6D25A12AEDD
	for <lists+linux-man@lfdr.de>; Thu, 26 Dec 2019 22:20:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727145AbfLZVUb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Dec 2019 16:20:31 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:33703 "EHLO
        mail-oi1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727049AbfLZVUb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Dec 2019 16:20:31 -0500
Received: by mail-oi1-f179.google.com with SMTP id v140so9088988oie.0
        for <linux-man@vger.kernel.org>; Thu, 26 Dec 2019 13:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=CgLdIWUvExB4Dp3LX48BTkF/jGRGRjXJv3q1vD8A49k=;
        b=QZtC3D9TcBAQ+tlxxWeK328K2u5vgwUVy+xqvSe4WwurTWH44Z0nH0PwvuEjXryozD
         9TtbeetZsFS5TiIWX0AWSxhIcRUJEh0YfNkFhYmF8odZUOE1T6qaSPNnI5WsQV6Nh31o
         hRNEOVzqUMMEDnPjLD7ysOSH6c80Gx3ZCzVZKyoZSzFcvVX1UKBeihxe7Aj+1UfasmDQ
         41P9E+uUcrw4AoSw1rANJXT7jyArlHM3U7cmxvtAk/85E86BKXs1ACLrYRvtdJ2HRFjp
         Othd6NLoFS85GNJwvyKcN+Ak1FPqESbMLXuKBbyrLfR4MSE4VHp3Q5EovMvSDKi92ZjQ
         +zHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=CgLdIWUvExB4Dp3LX48BTkF/jGRGRjXJv3q1vD8A49k=;
        b=Y314LRKDNXYz6KEDuhn4r4isyK9WyemOkQJ+bnHs6107sNK+ui046e+vUPsvGysc3x
         DHsqaIOtckeAp04ZS1sMHzOEP7JSdd35vgalJP7JqxPvB8F655pcHdAEy1IbXiQ6R3YJ
         vfj/ZXfF4RdA5YF0jQRR0iXoxUlNfgEMiEQWVpMIpjBQCmyVedPAL5huvKeEE4TnHK2S
         9ma2k0qb/kNKLXMObryqROa3wupB8sEbZQSPuYVd+xNDzpLXs5tCdpeT6OxP9Rb6a272
         5Z+A0IikuEkyM3T69uBsDIPCXtvltGLMfMZFsM0X1mRxK/DeP6oVXQXmCQfhhuhSbBz1
         qksA==
X-Gm-Message-State: APjAAAVfkH6eY7iS9rbo8Wdmn2h7BVjv5nRFWT10d8ns/mP9D7sHaQj/
        9FcNwIAd5l906IVgZQcTKVaG8ipGK+LFndVGkmg=
X-Google-Smtp-Source: APXvYqyDHGV/ij6mvSh7KZNnYOrHmGLfmv6JmrUivUKO+K5Ul8wVKTl8ht8YtHLertVinBqJj8muXwpTm6RY/3B+CC4=
X-Received: by 2002:aca:ad11:: with SMTP id w17mr3114212oie.85.1577395230618;
 Thu, 26 Dec 2019 13:20:30 -0800 (PST)
MIME-Version: 1.0
Reply-To: cshaiku@gmail.com
From:   Chris Simmons <cs.haiku@gmail.com>
Date:   Thu, 26 Dec 2019 14:19:55 -0700
Message-ID: <CAF2=S_KmYuApdphsVAHft0QZ8qN9aUD1yC33-6-UGSUbDdDrnw@mail.gmail.com>
Subject: ping entry has typo
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This:

       -f
           Flood ping. For every ECHO_REQUEST sent a period =E2=80=9C.=E2=
=80=9D is
printed, while for ever ECHO_REPLY received a backspace is


Should be:

       -f
           Flood ping. For every ECHO_REQUEST sent a period =E2=80=9C.=E2=
=80=9D is
printed, while for every ECHO_REPLY received a backspace is


Sincerely,

Chris Simmons
Tech Guru, Fullstack Developer
