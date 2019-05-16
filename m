Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E225A206CC
	for <lists+linux-man@lfdr.de>; Thu, 16 May 2019 14:22:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726909AbfEPMWH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 May 2019 08:22:07 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:38419 "EHLO
        mail-ot1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726618AbfEPMWG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 May 2019 08:22:06 -0400
Received: by mail-ot1-f48.google.com with SMTP id s19so3211279otq.5
        for <linux-man@vger.kernel.org>; Thu, 16 May 2019 05:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=tBtNF17+5+MVi5OoYOmDNZPjhbUyNjYOxF2QhqcZ7YA=;
        b=TUChJQ2fMDJj+IcwjnUWrFw2RO9mp6HHmhJ6goR+Qyz1NvNR+LQGS0CWpWosGiwBT9
         Ovk6Fl9ov91bXwzZmBBIX7t8qNnMxO3vsaDJoe3Qf5APCvCVddM6C3gDIALSSaAweM7j
         K4lrKSFxjygCMt+X/VwKiWLaa1VhYXjcW/BuNYwrWIz4z/aj0o61oQD47QOZ1Ltm0uCd
         Nv9pJ4Rvz8Bx7BEZemOvW3uDU+tBD97DK3/rbZOAqVkPBy6gdJqs4IDZLnKum/Q4VNbe
         9eTvV+i27WUnt1xZ+h/CGK350YQFP1Wmg8H5Rjc5AZ+OBK1I3eS+kBwg106XgeOAimo0
         LTQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=tBtNF17+5+MVi5OoYOmDNZPjhbUyNjYOxF2QhqcZ7YA=;
        b=Q6zEkszMaixJRoKLHV04jXWrQVL95HG/WQ+fHABTZc2oLIZP1L/dwu62RE4EWLE9OY
         Iicp7V2QEtyM8kvahF4xP/HPdAs/r8WESId64wjFSk1ghv7Txi+CZHCgAh3rcIdaGr04
         WBBWFXKCicQtWNOfIEaXSuYVyaScJGr94Mlamyun8/QBppe8pczOa+O89q6jD1ymoVa9
         HOAC3CmZ5CQC7fBbI86xNov1V/pGCjFtPuLUvKHQZfGmW11JZ8/z5YEA5iAJb0be5rcy
         TpRrdsUyGkTS2Mjjt+h7ryo1CjzKtlqWLLv1a3e4XiiiLlai4fwB7PgX4eUeVNL1zLfe
         WKLw==
X-Gm-Message-State: APjAAAVa4oeHeFws7EjRAz2zY706R2T61/q/LyIYsWYbiDgqde3MKdgq
        CyuWF/DlVTs7h9cLHANgd4sqDzMi3GyIU460Q9I=
X-Google-Smtp-Source: APXvYqxK63wE+OcBgQyjzjjnlBuAxLAK0QnBBAvWG3lzOe6YZ5Nv67EWXYB18ekGjestj7kYJuG743XafvS6tUpUzeg=
X-Received: by 2002:a9d:7987:: with SMTP id h7mr8629172otm.284.1558009325871;
 Thu, 16 May 2019 05:22:05 -0700 (PDT)
MIME-Version: 1.0
From:   =?UTF-8?B?VG9tYXMgU2vDpHJl?= <tomas.skare@gmail.com>
Date:   Thu, 16 May 2019 14:21:55 +0200
Message-ID: <CACZ6sNzK=Wvm_+RLYAhZN22SG68TdvBBW32xmFhk++Vpz=ZHOg@mail.gmail.com>
Subject: Spelling mistake in prctl(2)
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Saw a small spelling mistake in the man-page for prctl(2), under
PR_SET_KEEPCAPS:

       PR_SET_KEEPCAPS (since Linux 2.2.18)
              Set the state of the calling thread's "keep capabilities"
              flag.  The effect if this flag is described in
              capabilities(7).  arg2 must be either 0 (clear the flag) or 1
              (set the flag).  The "keep capabilities" value will be reset
              to 0 on subsequent calls to execve(2).

The "if" in the second sentence should be "of".


Cheers,

Tomas
