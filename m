Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47B24397359
	for <lists+linux-man@lfdr.de>; Tue,  1 Jun 2021 14:36:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231726AbhFAMhl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Jun 2021 08:37:41 -0400
Received: from mail.kernel.org ([198.145.29.99]:54334 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232965AbhFAMhl (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 1 Jun 2021 08:37:41 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 252686008E
        for <linux-man@vger.kernel.org>; Tue,  1 Jun 2021 12:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1622550960;
        bh=Hg3LE7PBjvg/bNCbYeLr+sOWg/V/F/zQABLJdE/cG2w=;
        h=From:To:Subject:Date:From;
        b=NKFQos2zyysfU9DKsy3F4E6BlWwiRP0b4B8QXa93cIb1Z1lrDeFXRZnAmfq0QZKiH
         5zmGPp6HoELPmJWp0LfgDT9Fl4A7mp6VpApKKhqXhZBUmRlmNv9gDjRQxfiJ6ZpJdE
         YXpyZwLSDNFSt236Tq0U6f5g8lrq1I5PSB6QcKazDlIRumFc9abnUIzopZcMJD/mzW
         Xqw+23ebE9goK0HI6EyEjbnXhb7J8aH3Yrm6SEb++t5qGhmfsgSaGS+5EFqkVredxy
         gKbSXAd0C09qxNp38FnJiK8NYhBGdW2o+LI7yZWlAX/wpSSkaRsZ2xszdQM6wJQqOv
         kVB8cZiIOI2eA==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 1D67760F56; Tue,  1 Jun 2021 12:36:00 +0000 (UTC)
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Kernel.org Bugzilla] Your account linux-man@vger.kernel.org is
 being impersonated
X-Bugzilla-Type: admin
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Message-Id: <20210601123600.1D67760F56@pdx-korg-bugzilla-2.web.codeaurora.org>
Date:   Tue,  1 Jun 2021 12:36:00 +0000 (UTC)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

    Konstantin Ryabitsev (mricon@kernel.org) has used the 'sudo' feature to=
 access=20
Kernel.org Bugzilla using your account.

    Konstantin Ryabitsev (mricon@kernel.org) provided the following reason =
for doing this:
Impersonating linux-man@vger.kernel.org to set up email integration with
bugzilla.kernel.org.

    If you feel that this action was inappropriate, please contact=20
helpdesk@kernel.org.  For more information on this feature,=20
visit <https://bugzilla.kernel.org/page.cgi?id=3Dsudo.html>.
