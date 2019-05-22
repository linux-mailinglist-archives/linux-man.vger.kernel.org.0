Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E88D925B27
	for <lists+linux-man@lfdr.de>; Wed, 22 May 2019 02:27:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728022AbfEVA1K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 May 2019 20:27:10 -0400
Received: from mail-ua1-f53.google.com ([209.85.222.53]:40671 "EHLO
        mail-ua1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726083AbfEVA1K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 May 2019 20:27:10 -0400
Received: by mail-ua1-f53.google.com with SMTP id d4so254170uaj.7
        for <linux-man@vger.kernel.org>; Tue, 21 May 2019 17:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=msd.k12.wi.us; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=1GsWxU7H95yLn+40+xul0t/IDBx8QgcMRAKvPbKmGUE=;
        b=DBlMi7XPU9bnnR03G8UgqlgyIlQsQlL6cHVEIVEcsMfbJDDg5YOnqMNb3mBQGN+RvU
         ibgCKWGHKP4AkP/rtj91hV15394BnhSZ/MJazKkgBa7/omy8BnQbtvubtNFomjE6y8Ni
         WwROfNpzJiMfUUn5J6Eh9H+PCxPyMVQbCBhSoBFWm4IOlG+l6pZQ7FyiBHcFu275nr4P
         q5pKOPZO8GAdEw5suEVSaq48ccrwQX8Fr3H8BkMBnOU8HwG35RhgSbNyKRB4/tnGoyj3
         NdMBP/DfWFlLWbPXwFoVUI130XQtFxXClDbGYFmlOWxga6fcIxB1Ht1xH7aNrx0Wtok1
         zKAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=1GsWxU7H95yLn+40+xul0t/IDBx8QgcMRAKvPbKmGUE=;
        b=GzZw0nQUWVO0tfMwqxVfUzwTqRMtOoiMFaNMqOpqp2cAYO1+0ScFJHqv4qDQskFjCN
         51/ehI2lgBP9xX3nDyORDAPT6AsgT7eS9HpsaOEl1npiQa4m9/Sh5vTrTfScjWLFx5+c
         wr8SzG6T01fN7awLigG4or8xvSiyRIko9DBXsDvhk5TkJMoLeBHpiSytgOblPYWpHFz6
         MJk+rL8FbxSs/hH5xKgOCzjv9hmZwF0GrYmKkTnIrrTx6mL3hl8MPjWjYRGiyFwC/aUH
         /bCd9NGrj3eTFaLJXQb1SxJp+ZUIkKEfXJgF1/TJeOGtb5ujK4+2nI26PNReXMapbP/w
         X5yg==
X-Gm-Message-State: APjAAAU6Yb/lFyeCJe/8zDSK0+EPWUNC1HiKCjJN35TJOHDnZRF5e9/X
        ArTIZSb5aHbRDVQFhfBw/Xhs31eE79AyX+ER5KQZrNrDV3iwQ3hufZxuPrdjqs3qpxjwK5NcTVx
        RWeSg8BWTSznd33ko2HX0eBaydyuP6J8+GCX9Nuru97iu2wkvg/n+8edLqr1AF3Wne35xHI9ZRZ
        QrgL/opZBoSUXUrQKs57yzK2lb3emo9DxzgtBgG9EfHuG2
X-Google-Smtp-Source: APXvYqwqSVdYQzy4EesA/5WEDoKZ9HCIi6X7cnvrZtI4uHIRXKQCW/XBYvoEvYlUZqzvaLmriJsDNVJ+Kn0ofxnbQJw=
X-Received: by 2002:a9f:2b0c:: with SMTP id p12mr34997774uaj.143.1558484828402;
 Tue, 21 May 2019 17:27:08 -0700 (PDT)
MIME-Version: 1.0
From:   JAMES WOODWARD <19246@msd.k12.wi.us>
Date:   Wed, 22 May 2019 00:26:34 -0500
Message-ID: <CAKuDSeamZCAESnFnyUg2zw2Kyp8w=UUoY6jqg1hP+Nzpg__YKQ@mail.gmail.com>
Subject: Typo in calcurse man page
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Under the heading DESCRIPTION, there is the string of text: "The
following two subsectiions". This should be "The following two
subsections".

Thank you for your work maintaining these resources.
