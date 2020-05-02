Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80DA01C2234
	for <lists+linux-man@lfdr.de>; Sat,  2 May 2020 04:08:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726562AbgEBCIM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 1 May 2020 22:08:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726473AbgEBCIL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 1 May 2020 22:08:11 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FFC7C061A0C
        for <linux-man@vger.kernel.org>; Fri,  1 May 2020 19:08:11 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id f13so13984364wrm.13
        for <linux-man@vger.kernel.org>; Fri, 01 May 2020 19:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=NfdWbYEHTTlQjZgX0A0BBgcapK5t27VBkhhO41eH5RM=;
        b=CVZBEZCgBxn+QegpcQQ1+17DoMtA+sLv4UZC3tO2qQ81LpOzJ3/XBbQj9L/a6nZ5uw
         ZakwgRevOyz7kYGQIH8YiaMpFI0Z5R/GqBoJhv4KXwIn+dSMB8ThEgmF3ZyWSGJMjGOx
         c5/miZO9RqDaix+kOS2oB+vg+dBw5cI5MrkX1ID0YhhRgpv3L8O+KfVqJT53WPpkyQ9B
         5ppzQP8Xk7LI0F4nLoakyJ15J7N9tO5up5xHTqjRdanwuAreNRufFdl7vuJUAFmgtkLX
         y52SgNr0EGjICrWocC66lnYQ9VwfOq8J/06ks5p8o94mmLOiMC3au/wAZxIJ9CinYiSG
         +CyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=NfdWbYEHTTlQjZgX0A0BBgcapK5t27VBkhhO41eH5RM=;
        b=EY6049aiUHSBGMCBzyX4ah00o0HP6wiL407uTBMNNuon6qVioIRAWThL4GfBeamENF
         Ujg1t/cdkMcAsUs77B0s5lXD/HVjdtxKxC2VkgtJkcnk/GIDLFuXTYVOWcFBRm35Bn3w
         cZRHPpsQ/y84UTiN+wrKFWptuZvsW3VM6z1auQfrzrBZGQaJW9RfXnCw3G7hPgxeLr9k
         fDpWVui5ieQNgoozQAeQ0twXx4bOeZ/tiz7N56woAI5YrDMBhK7qcSBsCJVe0Aq0ACXo
         moUgGvPzO4Izb7cvKRdpwcMPyXoJAP7ac+h3bm6UL47smEtspf0flVXAXg4PxLwyN9ss
         q2/w==
X-Gm-Message-State: AGi0PuYYh1P3Xod/RuG9ljzJT6HnamMJj92l73j9UzO+Elspvu/3vCVt
        BRITM5hgSIH5DbQ6VYK7pXAHKbwdSW2WDHj3+Uw=
X-Google-Smtp-Source: APiQypJ5t5Bts+DtBnx/ZSXbqMdgaWNQbwcmf9g5+lhYLBJHBFYkUl5NdilCTPlRENOUZC1JUpXbjIWvDc9G53HXQR4=
X-Received: by 2002:adf:f4d1:: with SMTP id h17mr6708413wrp.69.1588385289863;
 Fri, 01 May 2020 19:08:09 -0700 (PDT)
MIME-Version: 1.0
From:   Ricardo Castano <ricardo.castano.salinas@gmail.com>
Date:   Fri, 1 May 2020 21:07:59 -0500
Message-ID: <CAAhkZUtuvuPuzfnf74eOWB3PWGPUkXqz8nKOtjbz=Yow3JNbrg@mail.gmail.com>
Subject: Typos in copy_file_range(2)
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

In the man-page
http://man7.org/linux/man-pages/man2/copy_file_range.2.html , there
are 2 typos:
file_in is used instead of fd_in in the ERRORS and NOTES sections.
file_out is used instead of fd_out in the ERRORS section.

Best regards,

Ricardo Castano
