Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F3F01BA0F7
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2020 12:21:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726932AbgD0KU6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Apr 2020 06:20:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726504AbgD0KU6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Apr 2020 06:20:58 -0400
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com [IPv6:2607:f8b0:4864:20::944])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 223D7C0610D5
        for <linux-man@vger.kernel.org>; Mon, 27 Apr 2020 03:20:58 -0700 (PDT)
Received: by mail-ua1-x944.google.com with SMTP id z16so16717255uae.11
        for <linux-man@vger.kernel.org>; Mon, 27 Apr 2020 03:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=DKlI5wiJgZ4gG+S4PXyiFQVpXEm1Q7sE69RwBXiOmro=;
        b=IwCWfVOVr1zIKK7+G2gF65Gf05dD4gChf7zAWNC1oiae4fB6+UhxVNEJ/HXNiQZt8/
         a3Ag5qW7KXgDB+7ywhqRwoVToVYgCa+su/iYOI/dWi+cvioTRmBADOLqDONaVTmAue6x
         WVGNzIFiEyIaNKAMFC9HTf2LKZ+5ygUs7LWpk/UpyCWcll2/7rgd0YeUVe7HL9EIaP5W
         JdJdesHUTEG7yOdrBk2TNfrJKvso0OWhWjgVmp2PoCA/MZDjH/0ci5MyN9/xEKctcfKx
         OUKNVe86rGrdOI5QeVzG50Q7sF6YOZw5VrBf8AiVvKpsvL7JV3XhPn6XP+gRNPRCblmc
         FcZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=DKlI5wiJgZ4gG+S4PXyiFQVpXEm1Q7sE69RwBXiOmro=;
        b=UHpbZ0uLf8i2qbcOiJWKcZDonC1Pacai5Qk/K9rzcsQ3d/7ZSoo6E5+eq/RAwiI1WY
         PZ8mCuJswBRdSBePpn9m72bXRJ//0cCNY6xWj9UpZQliO1bLEICxzEuDGd0xHDEeZP9u
         Dh2uU6Lw45++o1SZWjwuUEZ0nXRAK6Slv/uaKX83MjAN48ws1v/QKT35BjoVvTT2BiLu
         FYYzLWv6kn1Tu6Pj1Iyy3JIgId8xkSf+N3tk7mJWO3jfBS2k5luEa4Subi1TrF6NQuE5
         Jwrfw4B2mc0yLTSJuc9Akl6ku9Hbw/1gSAbbDE7D12MXm4ffpVpBi6G3zpuTHqcfQOBi
         O6Rw==
X-Gm-Message-State: AGi0PubN3rwJuUGmqFY96u43Momd36YjB/8pd1xtrREZg2YLnnTFgYcT
        hgfU347E+ewhUNZnZsRb/EfwPMuV4aFvcHlS5gK0+CYx
X-Google-Smtp-Source: APiQypLF6kqvSd69D1A4Uh1cz0ECowSQWehZ8/rb33IvP2HQ2EQS5sHl6ulghhsKC8jJHAWnWEfq0q020mh6S5w2eEg=
X-Received: by 2002:a67:eb17:: with SMTP id a23mr15890604vso.111.1587982857434;
 Mon, 27 Apr 2020 03:20:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:6381:0:0:0:0:0 with HTTP; Mon, 27 Apr 2020 03:20:57
 -0700 (PDT)
Reply-To: lindsey4kindblers@hotmail.com
From:   lindsey <davidgeorgedavid7@gmail.com>
Date:   Mon, 27 Apr 2020 10:20:57 +0000
Message-ID: <CAHQOaSWqkSxB4WBr0bLp6wuE7uONT7MFta_gtK-sV+hPHNk-VQ@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=20
Jsem lindsey, ze st=C3=A1tu. Budu cht=C3=ADt, abys mi napsal, =C5=BEe ti mu=
s=C3=ADm =C5=99=C3=ADct
n=C4=9Bco velmi d=C5=AFle=C5=BEit=C3=A9ho.
Pozdravy,
Lindsey.

I am Lindsey , from state . I will like you to write me back, i have
something very vital to tell you  .
Regards,
Lindsey .
