Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BD13E128E84
	for <lists+linux-man@lfdr.de>; Sun, 22 Dec 2019 15:25:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725919AbfLVOZY convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Sun, 22 Dec 2019 09:25:24 -0500
Received: from wildebeest.demon.nl ([212.238.236.112]:37700 "EHLO
        gnu.wildebeest.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725852AbfLVOZX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Dec 2019 09:25:23 -0500
X-Greylist: delayed 490 seconds by postgrey-1.27 at vger.kernel.org; Sun, 22 Dec 2019 09:25:22 EST
Received: from tarox.wildebeest.org (tarox.wildebeest.org [172.31.17.39])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by gnu.wildebeest.org (Postfix) with ESMTPSA id 7C90B302BB21;
        Sun, 22 Dec 2019 15:17:10 +0100 (CET)
Received: by tarox.wildebeest.org (Postfix, from userid 1000)
        id 4D70A4B70B75; Sun, 22 Dec 2019 15:17:10 +0100 (CET)
Message-ID: <9b418bcbbd1addbca1fc67ac9d5b5cf5a09f39e7.camel@fedoraproject.org>
Subject: Re: elf.5.html: Resolving confusion.
From:   Mark Wielaard <mjw@fedoraproject.org>
To:     Florian Weimer <fweimer@redhat.com>,
        Robin Kuzmin <kuzmin.robin@gmail.com>
Cc:     mtk@man7.org, linux-man <linux-man@vger.kernel.org>
Date:   Sun, 22 Dec 2019 15:17:10 +0100
In-Reply-To: <87tv65hhvw.fsf@oldenburg2.str.redhat.com>
References: <CAAztzVHSQPAxY4zcmxtj8v8geEu=SJiSPPBBsZRxUeacxHO+-w@mail.gmail.com>
         <87tv65hhvw.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
X-Mailer: Evolution 3.28.5 (3.28.5-5.el7) 
Mime-Version: 1.0
X-Spam-Flag: NO
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
        autolearn=ham autolearn_force=no version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on gnu.wildebeest.org
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Thu, 2019-12-12 at 13:01 +0100, Florian Weimer wrote:
> * Robin Kuzmin:
> 
> > http://man7.org/linux/man-pages/man5/elf.5.html
> > 
> > I see the fragment:
> > 
> >        A section header table index is a subscript into this array.  Some
> >        section header table indices are reserved: the initial entry and the
> >        indices between SHN_LORESERVE and SHN_HIRESERVE.  The initial entry
> >        is used in ELF extensions for e_phnum, e_shnum and e_strndx; in other
> >        cases, each field in the initial entry is set to zero.  An object
> >        file does not have sections for these special indices:
> > 
> >        SHN_UNDEF
> >               This value marks an undefined, missing, irrelevant, or other‐
> >               wise meaningless section reference.
> > 
> > I interpret it like this:
> > 
> >        A section header table index **(e_shstrndx)** is a subscript
> > into this array.
> 
> No, e_shstrndx is just one of the possible indices.  It's just the
> string table that is used for section names.

I see "this array" refers to: "The section header table is an array of
Elf32_Shdr or Elf64_Shdr structures."

e_shstrndx is a field of ElfN_Ehdr, which contains an index into the
section header table array. Unless e_shstrndx is either SHN_UNDEF (0),
which means there is no section name string table or
SHN_XINDEX (0xffff), which means the index of the section name string
table can be found in the sh_link field of the initial (0) section
header table element.

My English isn't strong enough to know whether all these descriptions
are the same or not.

> >  Some
> >        section header table indices are reserved:
> >        the initial entry **(index 0)**
> >        and the indices **from** SHN_LORESERVE **to** SHN_HIRESERVE **,
> > inclusive**.
> >        **Such reserved indices, except SHN_XINDEX (0xffff), cannot be
> > used in e_shstrndx.
> >        If e_shstrndx is SHN_XINDEX (0xffff) then the sh_link filed of
> > the initial ElfN_Shdr cannot contain such reserved indices.**
> >        The **three fields in the** initial entry ** - sh_info, sh_size
> > and sh_link - can be** used in ELF extensions for e_phnum, e_shnum and
> > **e_shstrndx correspondingly**. **If they are not used then they are
> > set to zero. All other fields of the initial entry are set to zero.**
> >        **The section header table entries with the following special
> > indices contain special values,         and in the ELF file there are
> > no sections associated with such entries.**
> > 
> >        SHN_UNDEF
> >               This value marks an undefined, missing, irrelevant, or other‐
> >               wise meaningless section reference.
> >               **This index can be 0 in which case it means the initial
> > ElfN_Shdr with a special meaning described above.**
> > 
> > Is such an interpretation correct?
> 
> I'm not sure if your clarifications are correct.  I don't think the
> section header extension mechanism is used for extending e_phum.

Yes, on Solaris and GNU/Linux if e_phnum contains the value PN_XNUM
(0xffff) then the actual number of segments can be found in the sh_info
field of the initial (0) section header. But if sh_info itself is zero
then it is interpreted as having 0xffff segments. This seems to be an
extension that is not standardized beyond GNU and Solaris.

Also note that the "extension mechanism" for e_shnum is different from
e_phnum and e_shstrndx, which both use an explicit extension value
(0xffff). e_shnum uses the value zero when the number of sections is
larger than SHN_LORESERVE (0xff00). In that case you can get the number
of sections from the sh_size field of the initial section (0) (after
checking that e_shoff and e_shentsize are not also zero of course,
otherwise there is simply no section header table).

> The main thing that's not clear to me in the current description is
> whether the 256 reserved indices have still entries in the table
> (probably of type SHT_NULL).

The values have special meaning in certain context, but have no special
section in the section header table. So you can simply have a section
header at index 0xff12 for example. This would be a normal section
without special attributes.

Cheers,

Mark
