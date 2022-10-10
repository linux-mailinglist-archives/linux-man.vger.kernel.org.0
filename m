Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C6655FA699
	for <lists+linux-man@lfdr.de>; Mon, 10 Oct 2022 22:54:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230243AbiJJUyY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Oct 2022 16:54:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230221AbiJJUyW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Oct 2022 16:54:22 -0400
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com [188.165.51.139])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B35636F54D
        for <linux-man@vger.kernel.org>; Mon, 10 Oct 2022 13:54:21 -0700 (PDT)
Date:   Mon, 10 Oct 2022 20:54:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
        s=protonmail3; t=1665435257; x=1665694457;
        bh=wUVGy+Izivb1c08JzzFzFe6MgepHP6ixwG2FcjGNRz4=;
        h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
         Subject:Reply-To:Feedback-ID:Message-ID;
        b=I4DZaQRoyjOy0uNEKWTwHhNfzy664ijocXUiYoOl1GqiXXoPyEc4Qfv+VlMBjly4F
         2/ZfbihJ1cT4Q7LsDaaGwiK99dOlyTicAyP1pbco2OFAkpBtB3mJ5WIqlmq+2ndAgA
         JdfFemDZtfRHWAhLXtW1f+BKbywutagcTpfwyTpULGwo01ORf+O6FmLsFkvVHxZdgc
         iJceuKA1d2b/pSfhnJnZpLsWuYRLab+PGNWNQwEE3ve8IJ57USth7mX8mIwuU97BvF
         CIONkzAnzBgnaZlL4c5oiqzPGsQNZFAvm2kcStZOSyDQChSnX85Clb/yciSrvFDtZC
         +tUJWJynpYGWQ==
To:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
From:   Grigoriy <grigoriyremvar@protonmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>
Subject: Typo in hier(7)
Message-ID: <EaxY_bi27gr21Af1ZVvzsv5_HXuKiBWruaHhX04Vn6oGYQbTMOIwhaxAgdrnKKcuhIxulmrUu38q3xqXxeW6Et3jogFxvz-QVQB4zaL-BwM=@protonmail.com>
Feedback-ID: 35478484:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello.

I think I found a typo in the hier(7) manpage.
This part specifically:

/usr/share/sgml/mathtml
              MathML DTD (optional).

I believe that it should be "mathml" instead of "mathtml".
This typo is present in the latest release of this manpage, as it can be fo=
und in the one displayed online (https://man7.org/linux/man-pages/man7/hier=
.7.html).

FHS 2.3 (https://www.pathname.com/fhs/pub/fhs-2.3.pdf) page 27 states:

"The following directories, or symbolic links to directories, must be in /u=
sr/share/sgml [...] mathml"

This shows that "mathml" is the intended spelling.

Regards,
Grigoriy.
