Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7120B615BA
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2019 19:43:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726382AbfGGRng (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Jul 2019 13:43:36 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:45215 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725928AbfGGRng (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Jul 2019 13:43:36 -0400
Received: by mail-pf1-f195.google.com with SMTP id r1so6421664pfq.12
        for <linux-man@vger.kernel.org>; Sun, 07 Jul 2019 10:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=l2FkPDpJVs0nAjLyGSuTy4Vj5E70phdgQIUOlYKoBp8=;
        b=te3LQYxyD0rKOZvnS2wxVO3P+0NhA+PH/byjpzzqJr5g9KCFCYqpl2IvuoVdpq+mVu
         m3swJGqbpHQVHdAu9fjfBAunrfpkWAb5vBQCqjAOQnJJOiiAKaAxRnH+8I0/gJBLh3R3
         QrhSlCc5r7w9Hvny7ED0uh1oOGWj09pC3PlfjPSY1aMlFmCPkTqTh9wPIWrQ5VFanXLm
         oWKHifrIUyhCXslA12NEEcH0IeD4FK/uPWB3mkOrHalmnn87peevYHcQzISTFaT9G6Mm
         WHJOBKA7yjjDNW0Fnk069+go1a9Tfe9NGcy6mzT/yXvqsTmPxYkDH3bMm6Za7ZxE2Eo1
         kQlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=l2FkPDpJVs0nAjLyGSuTy4Vj5E70phdgQIUOlYKoBp8=;
        b=a4U7uuGVmsPZCrSjHe0apvV1H6P11W0T7Y13ahEcS3+BOtsQz31JEJT56TGj+IEqnX
         kSKeOPq+RrqhZbSLfYVYZpGkEMDeRcnp60Nl2zh+USTCeLVz7waDAIJ9fhPnYDHoEt7B
         kPgJGY7z1vbgfrhqVUnCN71TAdbqifgPYsrQ5P9OVZ6cckJ/75Fbs6d4vr+szlvkR6S1
         ouZRMCwBPMPu9U/3idoE5y23c50ffchMXsfJYvLJmPTxhnABQETqOWdToTPCL8s701u2
         FkSqyUFnXzTynIqrICUlxLZUdmjWzZ4T8QWynJC2jfLtSb296SpfA+s3E2OCvbRVjs1h
         oUfA==
X-Gm-Message-State: APjAAAU/hqIPiVUvbXITPth4IYyEaklaNyleeZQvQWNFER9vo71J8Cxk
        8QODgjF1wnSFfzRFcA9ZSC0=
X-Google-Smtp-Source: APXvYqynY7Y39ukL18z5VnZXA7HbLDXpTi2bpGvHH6aNOBUUZa/19b+xjXkEcwxQgQ27QGAtlmwuYA==
X-Received: by 2002:a65:4087:: with SMTP id t7mr8113597pgp.10.1562521415744;
        Sun, 07 Jul 2019 10:43:35 -0700 (PDT)
Received: from Journey.localdomain ([115.96.198.70])
        by smtp.gmail.com with ESMTPSA id t2sm13181842pgo.61.2019.07.07.10.43.33
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 07 Jul 2019 10:43:34 -0700 (PDT)
From:   Hritik Vijay <hritikxx8@gmail.com>
X-Google-Original-From: Hritik Vijay <Hritikxx8@gmail.com>
Date:   Sun, 7 Jul 2019 23:13:30 +0530
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: FIXME in Manual pages from other packages
Message-ID: <20190707174330.GA10203@Journey.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The page at https://www.kernel.org/doc/man-pages/man_pages_other.html
misses documentation for Arch Linx. I'd like to add the following.

Arch Linux
On Arch, [pacman](https://wiki.archlinux.org/index.php/Pacman) can be
used to query the database to know which package a file in the file
system belongs to.

After finding out the package name, the Arch [Web Package
Search](https://www.archlinux.org/packages/) can be used to find more
about the package such as maintainer's contact details.

If the package belongs to AUR (Arch User Repository), it can be searched
[here](https://aur.archlinux.org/packages/)
